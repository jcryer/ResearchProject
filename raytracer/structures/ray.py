from structures.vector import Vector
from structures.vertex import Vertex
import numpy as np 


class Ray(object):
    def __init__(self, position: Vertex, direction: Vector):
        self.position = position
        self.direction = direction
        self.test_arr = np.array([self.position.x, self.position.y, self.position.z, self.direction.x, self.direction.y, self.direction.z], dtype = float)
        self.test_arr_2 = np.array([self.direction.x ** 2, 
                                    self.direction.x * self.direction.y, 
                                    self.direction.x * self.direction.z,
                                    self.direction.y ** 2,
                                    self.direction.y * self.direction.z,
                                    self.direction.z ** 2,
                                    self.position.x * self.direction.x,
                                    (self.position.x * self.direction.y + self.position.y * self.direction.x),
                                    (self.position.x * self.direction.z + self.position.z * self.direction.x),
                                    self.position.y * self.direction.y,
                                    (self.position.y * self.direction.z + self.position.z * self.direction.y),
                                    self.position.z * self.direction.z,
                                    self.position.x ** 2,
                                    self.position.x * self.position.y,
                                    self.position.x * self.position.z,
                                    self.position.y ** 2,
                                    self.position.y * self.position.z,
                                    self.position.z ** 2,
                                    self.direction.x,
                                    self.direction.y,
                                    self.direction.z,
                                    self.position.x,
                                    self.position.y,
                                    self.position.z], dtype = float)
