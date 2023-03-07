-- Dictionary

local fruits = {
    Apple = "Red",
    Pineapple = "Yellow",
    Banana = "Yellow",
}

for key, value in pairs(fruits) do
    print(key, value)
end

print("=============")

fruits.Banana = nil

local appleColor = fruits["Apple"]
print(string.format("My apple is %s", appleColor))
local kiwiColor = fruits.Kiwi or "Invisible"
print(string.format("My kiwi is %s", kiwiColor))
print(string.format("My banana is %s", fruits.Banana))

print("=============")

fruits.Kiwi = print
fruits.Kiwi("Bazinga!")
