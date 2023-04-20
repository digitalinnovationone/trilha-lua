--Alias
--Aliases

export type Color = {
    r:number,
    g:number,
    b:number,
    a:number
}

local color: Color = {r=10,g=20,b=30,a=255}

local function printColor(color: Color)
    print(color.r)
    print(color.g)
    print(color.b)
    print(color.a)
end

printColor(color)

return color