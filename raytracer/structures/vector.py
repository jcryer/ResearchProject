from math import sqrt, pow
from structures.vertex import Vertex


def dot(v1, v2):
    return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z


def reflection(incident, normal):
    r = Vector()
    d = dot(incident, normal) * 2

    r.x = incident.x - (d * normal.x)
    r.y = incident.y - (d * normal.y)
    r.z = incident.z - (d * normal.z)

    return r


class Vector(object):
    def __init__(self, x: float = 0, y: float = 0, z: float = 0):
        self.x = x
        self.y = y
        self.z = z

    def __sub__(self, x: "Vector"):
        return Vector(self.x - x.x, self.y - x.y, self.z - x.z)

    def from_vertex(self, x: Vertex):
        self.x = x.x
        self.y = x.y
        self.z = x.z
        return self

    def normalise(self):
        mod = self.scalar()
        self.x /= mod
        self.y /= mod
        self.z /= mod
        return self

    def difference(self, a: Vertex, b: Vertex):
        self.x = b.x - a.x
        self.y = b.y - a.y
        self.z = b.z - a.z
        return self

    def scalar(self):
        return sqrt((pow(self.x, 2) + pow(self.y, 2) + pow(self.z, 2)))


"""
    static float dot(Vector v1, Vector v2)
{
return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z;
}
"""
