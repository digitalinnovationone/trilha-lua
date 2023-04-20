local function equalsLuau(x: number, y: number): boolean
    return x == y
end

local function equalsLua(x, y)
    return x == y
end

print(equalsLua(2,3))
print(equalsLuau(2,3))
