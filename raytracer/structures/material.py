from structures.pixel import Pixel
from structures.hit import Hit
from structures.light import Light
from structures.vector import Vector, dot, reflection

class Material(object):
    def __init__(self, ambient: Pixel, diffuse: Pixel, specular: Pixel, shininess: float):
        self.ambient = ambient
        self.diffuse = diffuse
        self.specular = specular
        self.shininess = shininess

    def calc_diffuse_specular(self, light: Light, hit: Hit, to_cam: Vector, to_light: Vector):

        dist = to_light.scalar()
        attenuation = 1.0 / (light.a_con + light.a_lin * dist + light.a_quad * dist * dist)
        ln = dot(hit.normal, to_light)
        rv = dot(reflection(to_light, hit.normal).normalise(), to_cam.normalise())

        output = Pixel()
        if ln > 0:
            output += (light.colour * self.diffuse).mul_scalar(ln * attenuation)

        if rv > 0:
            output += (light.colour * self.specular).mul_scalar(pow(rv, self.shininess) * attenuation)

        output += self.ambient
        return output


"""
    float LN = Vector::dot(hit.normal, to_light);
    float RV = Vector::dot(Vector::reflection(to_light, hit.normal).normalise(), reflect.direction.normalise());

    Colour output = Colour();
    if (LN > 0)
        output += light.colour * diffuse * LN;

    if (RV > 0 && shininess > 0)
        output += light.colour * specular * (pow(RV, shininess));

    return output;
"""