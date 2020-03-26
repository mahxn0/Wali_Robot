from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

from scipy import misc
import sys
import os
import argparse
#import tensorflow as tf
import numpy as np
import mxnet as mx
import random
import cv2
import sklearn
from sklearn.decomposition import PCA
from scipy.stats import norm
from time import sleep
from easydict import EasyDict as edict
sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src', 'common'))
import face_image
import face_preprocess
import insightface
import time

def do_flip(data):
  for idx in range(data.shape[0]):
    data[idx,:,:] = np.fliplr(data[idx,:,:])

def get_model(ctx, image_size, model_str, layer):
  _vec = model_str.split(',')
  assert len(_vec)==2
  prefix = _vec[0]
  epoch = int(_vec[1])
  print('loading',prefix, epoch)
  sym, arg_params, aux_params = mx.model.load_checkpoint(prefix, epoch)
  all_layers = sym.get_internals()
  sym = all_layers[layer+'_output']
  model = mx.mod.Module(symbol=sym, context=ctx, label_names = None)
  #model.bind(data_shapes=[('data', (args.batch_size, 3, image_size[0], image_size[1]))], label_shapes=[('softmax_label', (args.batch_size,))])
  model.bind(data_shapes=[('data', (1, 3, image_size[0], image_size[1]))])
  model.set_params(arg_params, aux_params)
  return model

class FaceModel:
  def __init__(self, args):
    self.args = args
    ctx = mx.gpu(args.gpu)
    _vec = args.image_size.split(',')
    assert len(_vec)==2
    image_size = (int(_vec[0]), int(_vec[1]))
    self.model = None
    if len(args.model)>0:
      self.model = get_model(ctx, image_size, args.model, 'fc1')

    self.detector=insightface.model_zoo.get_model("retinaface_mnet025_v2")
    self.detector.prepare(ctx_id=0,nms=0.4)


  def get_input(self, face_img):
    ret = self.detector.detect(face_img,threshold=0.8)
    if ret is None:
      return None
    bboxs, points = ret
    #print(ret)
    if bboxs.shape[0]==0:
      return None
    aligned=[]
    for i in range(bboxs.shape[0]):
      bbox = bboxs[i,0:4]
      point = points[i][0:]
      nimg = face_preprocess.preprocess(face_img, bbox, point, image_size='112,112')
      nimg = cv2.cvtColor(nimg, cv2.COLOR_BGR2RGB)
      aligned_img = np.transpose(nimg, (2,0,1))
      aligned.append((aligned_img,bbox,point))
    return aligned

  #@ 修改人脸输出格式为list
  def m_get_input(self, face_img):
    t1=time.time()
    ret = self.detector.detect(face_img,threshold=0.8)
    t2 = time.time() -t1
    #print(t2)
    aligns=[]
    bboxs=[]
    points=[]
    if ret is not None:
      bboxs, points = ret
      #print(bboxs)
      if bboxs.shape[0]:
        for i in range(bboxs.shape[0]):
          bbox = bboxs[i,0:4]
          point = points[i][0:]
          #print(point)
          nimg = face_preprocess.preprocess(face_img, bbox, point, image_size='112,112')
          nimg = cv2.cvtColor(nimg, cv2.COLOR_BGR2RGB)
          #cv2.imwrite("nimg.jpg", nimg)
          aligned_img = np.transpose(nimg, (2,0,1))
          aligns.append(aligned_img)
    return aligns,bboxs,points


  def get_feature(self, aligned):
    input_blob = np.expand_dims(aligned, axis=0)
    data = mx.nd.array(input_blob)
    db = mx.io.DataBatch(data=(data,))
    self.model.forward(db, is_train=False)
    embedding = self.model.get_outputs()[0].asnumpy()
    embedding = sklearn.preprocessing.normalize(embedding).flatten()
    return embedding

  def m_get_feature(self, alignsed):
    embs=[]
    for aligned in alignsed:
      input_blob = np.expand_dims(aligned, axis=0)
      data = mx.nd.array(input_blob)
      db = mx.io.DataBatch(data=(data,))
      self.model.forward(db, is_train=False)
      embedding = self.model.get_outputs()[0].asnumpy()
      embedding = sklearn.preprocessing.normalize(embedding).flatten()
      embs.append(embedding)
    return embs

  def get_ga(self, aligned):
    input_blob = np.expand_dims(aligned, axis=0)
    data = mx.nd.array(input_blob)
    db = mx.io.DataBatch(data=(data,))
    self.ga_model.forward(db, is_train=False)
    ret = self.ga_model.get_outputs()[0].asnumpy()
    g = ret[:,0:2].flatten()
    gender = np.argmax(g)
    a = ret[:,2:202].reshape( (100,2) )
    a = np.argmax(a, axis=1)
    age = int(sum(a))

    return gender, age
