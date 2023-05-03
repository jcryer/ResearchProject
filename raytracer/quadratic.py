import math

from structures.vertex import Vertex
from structures.vector import Vector, dot
from structures.ray import Ray
from structures.hit import Hit
from structures.material import Material
import numpy as np 

class Quadratic(object):
    def __init__(self, a: float, b: float, c: float, d: float, e: float, f: float, g: float, h: float, i: float,
                 j: float, material: Material):
        self.id = a
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
        self.g = g
        self.h = h
        self.i = i
        self.j = j
        self.test_arr = np.array([self.a, self.b, self.c, self.d, self.e, self.f, self.g, self.h, self.i, self.j], dtype = float)
        self.material = material
    
    def intersection(self, ray: Ray):
        t = float("inf")
        flag = False

        A = (
                self.a * (ray.direction.x ** 2) +
                2 * self.b * ray.direction.x * ray.direction.y +
                2 * self.c * ray.direction.x * ray.direction.z +
                self.e * (ray.direction.y ** 2) +
                2 * self.f * ray.direction.y * ray.direction.z +
                self.h * (ray.direction.z ** 2)
        )

        B = (
                2 * (self.a * ray.position.x * ray.direction.x +
                     self.b * (ray.position.x * ray.direction.y + ray.direction.x * ray.position.y) +
                     self.c * (ray.position.x * ray.direction.z + ray.direction.x * ray.position.z) +
                     self.d * ray.direction.x +
                     self.e * ray.position.y * ray.direction.y +
                     self.f * (ray.position.y * ray.direction.z + ray.direction.y * ray.position.z) +
                     self.g * ray.direction.y +
                     self.h * ray.position.z * ray.direction.z +
                     self.i * ray.direction.z
                     )
        )

        C = (
                self.a * (ray.position.x ** 2) +
                2 * self.b * ray.position.x * ray.position.y +
                2 * self.c * ray.position.x * ray.position.z +
                2 * self.d * ray.position.x +
                self.e * (ray.position.y ** 2) +
                2 * self.f * ray.position.y * ray.position.z +
                2 * self.g * ray.position.y +
                self.h * (ray.position.z ** 2) +
                2 * self.i * ray.position.z +
                self.j
        )

        if A == 0:
            return Hit(False)  # ray is tangent to surface of quadratic

        disc = (B ** 2) - 4 * A * C

        if disc < 0:
            return Hit(False)
        ds = math.sqrt(disc)

        t0 = (-B - ds) / (2 * A)
        t1 = (-B + ds) / (2 * A)

        if t1 < 0.0008:
            return Hit(False)

        # intersection exists
        # Need to check normal direction & flip
        if t0 > 0.0008:
            hit_p = Vertex(ray.position.x + t0 * ray.direction.x,
                           ray.position.y + t0 * ray.direction.y,
                           ray.position.z + t0 * ray.direction.z)
            norm_x = (self.a * hit_p.x + self.b * hit_p.y + self.c * hit_p.z + self.d)
            norm_y = (self.b * hit_p.x + self.e * hit_p.y + self.f * hit_p.z + self.g)
            norm_z = (self.c * hit_p.x + self.f * hit_p.y + self.h * hit_p.z + self.i)

            normal = Vector(norm_x, norm_y, norm_z).normalise()
            return Hit(True, t0, self, hit_p, normal)

        hit_p = Vertex(ray.position.x + t1 * ray.direction.x,
                       ray.position.y + t1 * ray.direction.y,
                       ray.position.z + t1 * ray.direction.z)

        norm_x = (self.a * hit_p.x + self.b * hit_p.y + self.c * hit_p.z + self.d)
        norm_y = (self.b * hit_p.x + self.e * hit_p.y + self.f * hit_p.z + self.g)
        norm_z = (self.c * hit_p.x + self.f * hit_p.y + self.h * hit_p.z + self.i)

        normal = Vector(norm_x, norm_y, norm_z).normalise()
 
        return Hit(True, t1, self, hit_p, normal)
