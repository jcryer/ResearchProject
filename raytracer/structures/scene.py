import math

from structures.vertex import Vertex
from structures.vector import Vector, dot
from structures.ray import Ray
from structures.hit import Hit
from structures.material import Material
from structures.pixel import Pixel

import numpy as np 

import time

class Scene(object):
    def __init__(self, eye, lights, objs, setup_buffers):
        self.eye = eye
        self.lights = lights
        self.objs = objs
        self.objs_raw = np.array([])
        for obj in self.objs:
            self.objs_raw = np.append(self.objs_raw, obj.test_arr)
        self.in_buffer = []
        #self.in_buffer = setup_buffers(self.objs_raw, len(self.objs))

    def get_hit_python(self, ray):
        final_hit = None
        hits = []
        for obj in self.objs:
            hit = obj.intersection(ray)
            
            if hit.flag:
                hits.append(hit)
        if len(hits) == 0:
            return None
        final_hit = hits[0]
        for hit in hits:
            if hit.t < final_hit.t:
                final_hit = hit
        return final_hit
    
    def get_hit_driver(self, ray, driver):
        final_hit, max_objs, i = driver(self.in_buffer, ray.test_arr)
        if (final_hit.flag):
            final_hit.what = self.objs[final_hit.what + (max_objs*i)]
            return final_hit
        else:
            return None
            
    def render(self, ray, driver):
        tt = 0
        final_hit = None
        if (driver == None):
            st = time.time()
            final_hit = self.get_hit_python(ray)
            et = time.time()
            tt = et - st
        else:
            st = time.time()
            final_hit = self.get_hit_driver(ray, driver)
            et = time.time()
            tt = et - st
       
        if (final_hit == None):
            return (False, None, tt)
        
        to_cam = Vector().difference(self.eye, final_hit.position)

        sum_pixel = Pixel()
        for light in self.lights:
            to_light = Vector().difference(final_hit.position, light.position)
            sum_pixel += final_hit.what.material.calc_diffuse_specular(light, final_hit, to_cam, to_light)

        return (True, sum_pixel, tt)
 