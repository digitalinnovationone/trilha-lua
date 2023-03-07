
local function hi()
    print("Hi")
end

local hello = function()
    print("Hello")
end

hello = hi

hi()
hello()

print(type(hello))
print(type(hi))

local banana = print
banana("Bananas Amarelas")
