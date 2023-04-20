local types = require("types")

local fruits : types.Dictionary<number> = {}
fruits.Banana = 12
fruits.Apple = 8
fruits.Kiwi = 2
for key,value in pairs(fruits) do
    print(key, value)
end

local colors: types.Dictionary<types.Color> = {}
colors.Banana = {r=120, g=220, b=0, a=255}
colors.Apple = {r=255, g=0, b=0, a=255}
colors.Kiwi = {r=0, g=220, b=0, a=255}
for key,value in pairs(colors) do
    print(key, value.r, value.g, value.b, value)
end
