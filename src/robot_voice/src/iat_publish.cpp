/*
* 语音听写(iFly Auto Transform)技术能够实时地将语音转换成对应的文字。
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "robot_voice/qisr.h"
#include "robot_voice/msp_cmn.h"
#include "robot_voice/msp_errors.h"
#include "robot_voice/speech_recognizer.h"
#include "robot_voice/linuxrec.h"
#include "robot_voice/cJSON.h"
#include <iconv.h>
#include "yidamsg/walle_wakeup.h"
#include "yidamsg/walle_speech_recognition.h"
#include "yidamsg/walle_audio_broadcase.h"

#include "ros/ros.h"
#include "std_msgs/String.h"

#define FRAME_LEN   640 
#define BUFFER_SIZE 4096
#define MAX_PARAMS_LEN      (1024)



const char * ASR_RES_PATH        = "fo|/home/test/catkin_ws_dev/src/robot_voice/resource/common.jet";   //离线语法识别资源路径
const char * GRM_BUILD_PATH      = "/home/test/catkin_ws_dev/src/robot_voice/resource/GrmBuild";        //构建离线语法识别网络生成数据保存路径
const char * GRM_FILE            = "/home/test/catkin_ws_dev/src/robot_voice/resource/bnf/call_dev.bnf";    //构建离线识别语法网络所用的语法文件

int start_recon   = 0 ;
int count         = 0 ;
yidamsg::walle_speech_recognition p_result;
yidamsg::walle_audio_broadcase srv;

void on_result(const char *result, char is_last)
{
    printf("\n############################# 识别结果 ####################################\n");
    printf("%s\n", result);
    printf("###########################################################################\n\n");
    if (result) {
        // show_result(result, is_last);

        cJSON *json;
        const cJSON *item = NULL;
        const cJSON *maxItem = NULL;
        json = cJSON_Parse(result);

        cJSON *arrayItem = cJSON_GetObjectItem(json, "ws");
        cJSON_ArrayForEach(item, arrayItem)
        {
            cJSON * arrayCw = cJSON_GetObjectItem(item, "cw");
            if (cJSON_GetArraySize(arrayCw) > 0) {
                cJSON *cwItem = cJSON_GetArrayItem(arrayCw, 0);
                cJSON * temp = cJSON_GetObjectItem(cwItem, "w");
                if (maxItem == NULL) {
                    maxItem = cwItem;
                    continue;
                } else {
                    cJSON *maxSc = cJSON_GetObjectItem(maxItem, "sc");
                    cJSON *itemSc = cJSON_GetObjectItem(cwItem, "sc");
                    if (maxSc->valueint < itemSc->valueint) {
                        maxItem = cwItem;
                        continue;
                    }
                }
           
            }
        }

        cJSON *id = cJSON_GetObjectItem(maxItem, "id");
        if (id->valueint == 10001 ||
        id->valueint == 10002 ||
        id->valueint == 10003 ||
        id->valueint == 10004 ||
        id->valueint == 10005 ||
        id->valueint == 10006 ||
        id->valueint == 10007 ||
        id->valueint == 10008 ||
        id->valueint == 10009) {
            p_result.cmd_id = id->valueint;
            cJSON *txt = cJSON_GetObjectItem(maxItem, "w");
            p_result.txt = txt->valuestring;

            srv.request.text = txt->valuestring;
            srv.request.file_type = 1;

            start_recon = 0;
            count = 19;
            sleep(1);
        }
        cJSON_Delete(json);
    }
}

void on_speech_begin()
{
    printf("Start Listening...\n");
}
void on_speech_end(int reason)
{
    if (reason == END_REASON_VAD_DETECT) {
        printf("\nSpeaking done \n");
    } else {
        count = 19;
        printf("\nRecognizer error %d\n", reason);
    }
}

void WakeUp(const yidamsg::walle_wakeup::ConstPtr& msg)
{
    p_result.direction = msg->wakeup;
    start_recon = 1;
}

int main(int argc, char* argv[])
{
    // 初始化ROS
    ros::init(argc, argv, "speech_recognition");
    ros::NodeHandle n;
    ros::Rate loop_rate(10);

    // 声明Publisher和Subscriber
    // 订阅唤醒语音识别的信号
    ros::Subscriber wakeUpSub = n.subscribe("/wall_e/speech_wakeup", 1000, WakeUp);   
    // 订阅唤醒语音识别的信号    
    ros::Publisher voiceWordsPub = n.advertise<yidamsg::walle_speech_recognition>("/wall_e/speech_recognition", 1000);  

    ros::ServiceClient client = n.serviceClient<yidamsg::walle_audio_broadcase>("/wall_e/audio_broadcast");

    ROS_INFO("Sleeping...");

    bool is_first = false;
    struct UserData user_data;
    char session_begin_params[MAX_PARAMS_LEN]    = {NULL};
    start_recon = 1;
    while(ros::ok())
    {
        ros::spinOnce();
        loop_rate.sleep();
        if (start_recon) {
            count = 0;
            int ret = MSP_SUCCESS;
            struct speech_rec iat;
            struct speech_rec_notifier recnotifier = {
                on_result,
                on_speech_begin,
                on_speech_end
            };

            if (is_first == false) {
                const char* login_params = "appid = 5d5608c6";

                ret = MSPLogin(NULL, NULL, login_params);
                if(MSP_SUCCESS != ret){
                    MSPLogout();
                    printf("MSPLogin failed , Error code %d.\n",ret);
                    continue;
                }
                printf("MSLogin success\n");
                if (!(&user_data))
                    return -E_SR_INVAL;
                memset(&user_data, 0, sizeof(struct UserData));
                char build_params[MAX_PARAMS_LEN]    = {NULL};
                snprintf(build_params, MAX_PARAMS_LEN - 1, 
                    "engine_type = local, asr_res_path = %s, "
                    "sample_rate = 16000, grm_build_path = %s",
                    ASR_RES_PATH, GRM_BUILD_PATH);
                ret = sr_build_grammar("bnf", GRM_FILE, build_params, &user_data);
                if (MSP_SUCCESS != ret) {
                    MSPLogout();
                    printf ("build grammar failed %d \n", ret);
                    continue;
                }
                snprintf(session_begin_params, MAX_PARAMS_LEN - 1, 
                    "engine_type = local,asr_res_path = %s, "
                    "sample_rate = 16000,grm_build_path = %s, "
                    "local_grammar = %s,sub = iat,"
                    "domain = iat, language = zh_cn,"
                    "accent = mandarin,result_type = json,"
                    "result_encoding = utf8, vad_eos=1000, "
                    "asr_denoise = 1",
                    ASR_RES_PATH, GRM_BUILD_PATH, user_data.grammar_id);

                ret = sr_init_recorder(&user_data, session_begin_params, &iat);
                if (MSP_SUCCESS != ret) {
                    MSPLogout();
                    printf ("init recorder failed %d \n", ret);
                    continue;
                }

                ret = start_recorder(&user_data);
                if (MSP_SUCCESS != ret) {
                    MSPLogout();
                    printf ("start recorder failed %d \n", ret);
                    continue;
                }

                is_first = true;
            }

            ret = sr_init(&iat, session_begin_params, &recnotifier);
            if (ret) {
                printf("speech recognizer init failed\n");
                continue;
            }

            ret = sr_start_listening(&iat);
            if (ret) {
                printf("start listen failed %d\n", ret);
            }

            while(count++ < 19) {
                printf("*************** count %d \n", count);
                sleep(1);
            }
            printf("start recognizer ...... \n");
            ret = sr_stop_listening(&iat);
            if (ret) {
                printf("stop listening failed %d\n", ret);
            }
            sr_uninit(&iat);

            printf("******* publish message *********** \n", p_result.cmd_id);
            p_result.txt = "亲爱的用户，您好，这是一个语音合成示例，感谢您对科大讯飞语音技术的支持！科大讯飞是亚太地区最大的语音上市公司，股票代码：002230";
            voiceWordsPub.publish(p_result);

            if(client.call(srv)){
                printf("××××××××××××××× %d %s \n", srv.response.status_code, srv.response.message.c_str());
            } else {
                printf("×××××××××××××××\n");
            }
        }
        // 语音识别完成
        // if(start_recon = 0){
        //     resultFlag=0;
        //     std_msgs::String msg;
        //     msg.data = g_result;
        // }
        start_recon = 0;
        // count++;
    }

exit:
    sr_uninit_recorder(&user_data);
    MSPLogout(); // Logout...

    return 0;
}
