from PIL import Image
from structures.pixel import Pixel


class Buffer(object):
    def __init__(self, width: int, height: int):
        self.width = width
        self.height = height
        self.buffer = [Pixel() for _ in range(width * height)]

    def plot_pixel(self, x: int, y: int, pixel: Pixel):
        self.buffer[y * self.width + x] = pixel

    def write_file(self, filename: str):
        img = Image.new("RGB", (self.width, self.height))

        img.putdata([p.to_buffer() for p in self.buffer])
        img.save(filename)
