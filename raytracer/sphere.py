import math

from structures.vertex import Vertex
from structures.vector import Vector, dot
from structures.ray import Ray
from structures.hit import Hit
from structures.material import Material


class Sphere(object):
    def __init__(self, centre: Vertex = Vertex(), radius: float = 1, material: Material = None):
        self.centre = centre
        self.radius = radius
        self.material = material

    def intersection(self, ray: Ray):
        t = float("inf")
        flag = False

        ro = ray.position - self.centre
        a = dot(ray.direction, ray.direction)
        b = 2 * dot(ray.direction, ro)
        c = dot(ro, ro) - (self.radius * self.radius)

        disc = b * b - (4 * a * c)
        if disc < 0:
            return Hit(False)

        ds = math.sqrt(disc)

        t0 = (-b - ds) / 2
        t1 = (-b + ds) / 2

        if t1 < 0.0008:
            return Hit(False)

        # intersection exists

        if t0 > 0.0008:
            hit_p = Vertex(ray.position.x + t0 * ray.direction.x,
                           ray.position.y + t0 * ray.direction.y,
                           ray.position.z + t0 * ray.direction.z)

            normal = Vector().from_vertex(hit_p - self.centre).normalise()
            return Hit(True, t0, self, hit_p, normal)

        hit_p = Vertex(ray.position.x + t1 * ray.direction.x,
                       ray.position.y + t1 * ray.direction.y,
                       ray.position.z + t1 * ray.direction.z)

        normal = Vector().from_vertex(hit_p - self.centre).normalise()
        return Hit(True, t1, self, hit_p, normal)
