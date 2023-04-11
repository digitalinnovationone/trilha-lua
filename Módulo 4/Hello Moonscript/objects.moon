class Block
    new: (type) =>
        @type = type
        @position = x: 0, y: 0, z:0
    isGrass: => @type == "Grass"
    setPosition: (x=0, y=0, z=0) =>
        @position = :x, :y, :z
    __tostring: =>
        "#{@type} Block at #{@position.x}, #{@position.y}, #{@position.z}"

class Grass extends Block
    new: => super "Grass"
    __tostring: => super!

myBlock = Grass!
myBlock\setPosition 404, 63, -1700

myBlock2 = Block("Snow")
myBlock2\setPosition 0, 202, 0

print myBlock
print myBlock2