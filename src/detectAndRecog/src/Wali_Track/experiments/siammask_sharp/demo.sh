cd ~/M_DeepLearning/object_track/SiamMask
export SiamMask=$PWD
export PYTHONPATH=$PWD:$PYTHONPATH
cd $SiamMask/experiments/siammask_sharp
export PYTHONPATH=$PWD:$PYTHONPATH
python ../../tools/demo.py --resume SiamMask_DAVIS.pth --config config_davis.json
