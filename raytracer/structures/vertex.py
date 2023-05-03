class Vertex(object):
    def __init__(self, x: float = 0, y: float = 0, z: float = 0):
        self.x = x
        self.y = y
        self.z = z

    def __sub__(self, x: "Vertex"):
        return Vertex(self.x - x.x, self.y - x.y, self.z - x.z)

