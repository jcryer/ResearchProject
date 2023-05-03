import math

from structures.vertex import Vertex
from structures.vector import Vector, dot
from structures.ray import Ray
from structures.hit import Hit
from enum import Enum


class Operation(Enum):
    UNION = 0
    INTERSECTION = 1
    DIFFERENCE = 2


class CSG(object):
    def __init__(self, a, b, operation: Operation):
        self.a = a
        self.b = b
        self.operation = operation

    def intersection(self, ray: Ray):
        i0 = self.a.intersection(ray)
        i1 = self.b.intersection(ray)

        return Hit(True, t0, self, hit_p, normal)
