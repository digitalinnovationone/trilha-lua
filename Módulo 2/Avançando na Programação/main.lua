
-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

local function sayHello(name)
    name = name or "Estranho"
    print("Olá " .. name .. ", seja bem vindo!")
end

local function getDate()
    return os.date()
end

local function convertKilometersToMiles(km)
    km = km or 0
    local miles = km / 1.609
    return math.floor(miles + 0.5)
end

local function convertMany(km1, km2, km3)
    local m1 = convertKilometersToMiles(km1)
    local m2 = convertKilometersToMiles(km2)
    local m3 = convertKilometersToMiles(km3)
    return m1, m2, m3
end

print()
sayHello()
sayHello("Rafa")
print("A data de hoje é " .. getDate())
local kpm = 50
local mph = convertKilometersToMiles(kpm)
print("O vento está com uma velocidade de " .. mph .. " MPH")
local mph1, mph2, mph3 = convertMany(60, 80, 120)
print("Conversões rápidas:", mph1, mph2, mph3)
print()
