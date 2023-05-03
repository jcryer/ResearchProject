def bound(i: float):
    if i < 0:
        i = 0
    if i > 1:
        i = 1
    return i


class Pixel(object):
    def __init__(self, *args):
        if len(args) > 0:
            self.r = bound(args[0])
            self.g = bound(args[1])
            self.b = bound(args[2])
        else:
            self.r = 0
            self.g = 0
            self.b = 0

    def __add__(self, x: "Pixel"):
        return Pixel(self.r + x.r, self.g + x.g, self.b + x.b)

    def __sub__(self, x: "Pixel"):
        return Pixel(self.r - x.r, self.g - x.g, self.b - x.b)

    def __mul__(self, x: "Pixel"):
        return Pixel(self.r * x.r, self.g * x.g, self.b * x.b)

    def __truediv__(self, x: "Pixel"):
        return Pixel(self.r / x.r, self.g / x.g, self.b / x.b)

    def __str__(self):
        return "Pixel: ({0}, {1}, {2})".format(self.r, self.g, self.b)

    def mul_scalar(self, x: float):
        return Pixel(self.r * x, self.g * x, self.b * x)

    def add_scalar(self, x: float):
        return Pixel(self.r + x, self.g + x, self.b + x)

    def to_buffer(self):
        return int(self.r * 255), int(self.g * 255), int(self.b * 255)

