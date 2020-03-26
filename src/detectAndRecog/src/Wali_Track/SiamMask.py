# --------------------------------------------------------
# SiamMask
# Licensed under The MIT License
# Written by Qiang Wang (wangqiang2015 at ia.ac.cn)
# --------------------------------------------------------
import glob
from tools.test import *
from custom import Custom
parser = argparse.ArgumentParser(description='PyTorch Tracking Demo')
parser.add_argument('--resume', default='/home/mahxn0/M_DeepLearning/object_track/SiamMask/experiments/siammask_sharp/SiamMask_VOT.pth', type=str,
                    metavar='PATH',help='path to latest checkpoint (default: none)')
parser.add_argument('--config', dest='config', default='/home/mahxn0/M_DeepLearning/object_track/SiamMask/experiments/siammask_sharp/config_vot.json',
                    help='hyper-parameter of SiamMask in json format')
parser.add_argument('--base_path', default='../../data/double', help='datasets')
parser.add_argument('--cpu', action='store_true', help='cpu mode')
args = parser.parse_args()

class SiamMask(object):
    def __init__(self):
        print("__init__")
        self.device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
        torch.backends.cudnn.benchmark = True
        # Setup Model
        self.cfg = load_config(args)

        print(self.cfg['anchors'])
        self.siammask = Custom(anchors=self.cfg['anchors'])
        if args.resume:
            assert isfile(args.resume), 'Please download {} first.'.format(args.resume)
            self.siammask = load_pretrain(self.siammask, args.resume)
        self.siammask.eval().to(self.device)

    def track_init(self,im,x,y,w,h):
        # Setup device
        target_pos = np.array([x + w / 2, y + h / 2])
        target_sz = np.array([w, h])
        state = siamese_init(im, target_pos, target_sz, self.siammask, self.cfg['hp'], device=self.device)  # init tracker
        return state

    def track(self,im,state):
        state = siamese_track(state, im, mask_enable=True, refine_enable=True, device=self.device)  # track
        location = state['ploygon'].flatten()
        #print(location)
        mask = state['mask'] > state['p'].seg_thr
        #im[:, :, 2] = (mask > 0) * 255 + (mask == 0) * im[:, :, 2]
        #cv2.polylines(im, [np.int0(location).reshape((-1, 1, 2))], True, (0, 255, 0), 3)
        return mask,location

if __name__=='__main__':
    # Parse Image file
    sm=SiamMask()
    # Select ROI
    cv2.namedWindow("SiamMask", cv2.WND_PROP_FULLSCREEN)
    #cap=cv2.VideoCapture("/home/mahxn0/M_DeepLearning/insightface/deploy/video_yolov3_face.avi")
    cap=cv2.VideoCapture(1)
    file_path="/home/mahxn0/darknet/car_track2.avi"
    track_flag=False
    fourcc = cv2.VideoWriter_fourcc('I', '4', '2', '0')
    video = cv2.VideoWriter( file_path, fourcc, 25, (960,544) )
    while True:

        if(cap.isOpened()):
            _ret,im=cap.read()
            x,y,w,h=0,0,0,0
            f=999999999
            if cv2.waitKey(1) & 0xFF == ord('a'):
                init_rect = cv2.selectROI('SiamMask',im, False, False)
                print(im.shape,init_rect)
                x, y, w, h = init_rect
                f=0
                track_flag=True
            if track_flag:
                toc = 0
                tic = cv2.getTickCount()
                if f == 0:  # init
                    state = sm.track_init(im,x,y,w,h)
                elif f > 0:  # tracking
                    mask,location=sm.track(im,state)
                    im[:, :, 2] = (mask > 0) * 255 + (mask == 0) * im[:, :, 2]
                    cv2.polylines(im, [np.int0(location).reshape((-1, 1, 2))], True, (0, 255, 0), 3)
                    location=np.int0(location).reshape((-1, 1, 2))
                    print(location)
                    print(np.amin(location,axis=0)[0][0])
                    xmin=np.amin(location,axis=0)[0][0]
                    xmax=np.amax(location,axis=0)[0][0]
                    ymin=np.amin(location,axis=0)[0][1]
                    ymax=np.amax(location,axis=0)[0][1]
                    cv2.rectangle(im,(int(xmin),int(ymin)),(int(xmax),int(ymax)),(0,0,255),3)
                    key = cv2.waitKey(1)
                    if key > 0:
                        break
                toc += cv2.getTickCount() - tic
                toc /= cv2.getTickFrequency()
                fps = f / toc
                print('SiamMask Time: {:02.1f}s Speed: {:3.1f}fps (with visulization!)'.format(toc, fps))
            #video.write(im)
            cv2.imshow('SiamMask', im)
        else:
            print("camera open failed")
            break

