local utils = require("utils")
local sheep = require("creatures.sheep")
local cat = require("creatures.cat")

utils.enableUtf8()
print()
print("Hello from Main")
sheep.talk()
cat.talk()
print()
for i = 5, 7, 1 do
    print(utils.getProgressBar(i))
end
