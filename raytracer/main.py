from buffer import Buffer
from structures.pixel import Pixel
from structures.vertex import Vertex
from structures.vector import Vector
from structures.light import Light
from structures.material import Material
from structures.ray import Ray
from sphere import Sphere
from quadratic import Quadratic


def main():
    test = Quadratic(1, 0, 0, 2, 1, 0, 0, 1, 0, -1, Material(Pixel(0.1, 0.1, 0.1), Pixel(0.5, 0, 0), Pixel(0.5, 0.5, 0.5), 50))
    x = test.intersection(Ray(Vertex(0, 0, 0), Vector(-0.3015113, -0.3015113, 0.9045340)))
    print(x.flag)
    #temp()


# Sphere signed distance function test
def sdf(point: Vertex, centre: Vertex, radius: float):
    return Vector().difference(point, centre).scalar() - radius


"""

    int half_size = size/2;
    auto half_size_f = (float)half_size;
    RayTracer raytracer = RayTracer(std::move(lights), std::move(objects));
    raytracer.init(500, 100000);
    for (int x = -half_size; x < half_size; x++) {
        std::cout << x << " \n";
        for (int y = -half_size; y < half_size; y++) {
            Ray r = Ray(Vertex(0, 0, 0), Vector((float)x/half_size_f, (float)y/half_size_f, 3).normalise());

            Colour out = raytracer.raytrace(r, 4, 3);
            raytracer.in_material = false;
            fb.plotPixel(x + half_size, size - (y + half_size) - 1, out.r, out.g, out.b);
"""


def temp():
    size = 500
    half_size = size / 2
    half_size_i = int(half_size)
    eye = Vertex(0, 0, 0)
    b = Buffer(size, size)

    sph = Sphere(Vertex(0, 0, 0), 1, Material(Pixel(0.1, 0.1, 0.1), Pixel(0.3, 0.3, 0.3), Pixel(0.5, 0.5, 0.5), 50))
    sph2 = Sphere(Vertex(0, 0, 0), 1, Material(Pixel(0.1, 0.1, 0.1), Pixel(0.3, 0.3, 0.3), Pixel(0.5, 0.5, 0.5), 50))
    test = Quadratic(1, 0, 0, 2, 1, 0, 0, 1, 0, -1, Material(Pixel(0.1, 0.1, 0.1), Pixel(0.5, 0, 0), Pixel(0.5, 0.5, 0.5), 50))
    test2 = Quadratic(0.9, 0, 0, 0, 0.9, 0, 0, 0.9, 0, -1, Material(Pixel(0.1, 0.1, 0.1), Pixel(0, 0.7, 0), Pixel(0, 0, 0), 1))
    objs = [test]

    light1 = Light(Vertex(4, 2, -5), Pixel(1, 1, 1), 1, 1, 0)

    for x in range(-half_size_i, half_size_i):
        print(x)
        for y in range(-half_size_i, half_size_i):
            r = Ray(eye, Vector(x / half_size, y / half_size, 3).normalise())
            hits = []
            for obj in objs:
                hit = obj.intersection(r)
                if hit.flag:
                    hits.append(hit)
            if len(hits) == 0:
                continue

            min_hit = hits[0]
            for hit in hits:
                if hit.t < min_hit.t:
                    min_hit = hit

            to_cam = Vector().difference(eye, min_hit.position)
            to_light = Vector().difference(min_hit.position, light1.position)

            b.plot_pixel(x + half_size_i, y + half_size_i, min_hit.what.material.calc_diffuse_specular(light1, min_hit, to_cam, to_light))

            # raytrace to find intersection
            # plot resultant pixel

    print("Writing file.")
    b.write_file("test.png")


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    main()
