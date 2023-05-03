from structures.pixel import Pixel
from structures.vertex import Vertex


class Light(object):
    def __init__(self, position: Vertex, colour: Pixel, a_con: float, a_lin: float, a_quad: float):
        self.position = position
        self.colour = colour
        self.a_con = a_con
        self.a_lin = a_lin
        self.a_quad = a_quad
