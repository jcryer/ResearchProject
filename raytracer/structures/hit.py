from structures.vertex import Vertex
from structures.vector import Vector


class Hit(object):
    def __init__(self, flag: bool, t: float = 0, what=None, position: Vertex = Vertex(), normal: Vector = Vector()):
        self.flag = flag
        self.t = t
        self.what = what
        self.position = position
        self.normal = normal
