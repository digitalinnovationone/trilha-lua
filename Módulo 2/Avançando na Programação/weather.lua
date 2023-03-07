
--[[
    Olá NOME
    
    A previsão para o dia de hoje é um dia PREVISAO.
    A temperatura irá variar entre min e max Celsius (min e max Fahrenheit)
]]

local name = "Rafa"
local forecast = "ensolarado"
local min = 22
local max = 35

local function convertCelsiusToFahrenheit(c)
    local f = (c * 9/5) + 32
    return f
end

local minF = convertCelsiusToFahrenheit(min)
local maxF = convertCelsiusToFahrenheit(max)

print(string.format("Olá %s.", name))
print()
print(string.format("A previsão para hoje é um dia %s.", forecast))
print(string.format("A temperatura irá variar entre %d e %d graus Celsius (%.2f e %.2f Fahrenheit)", min, max, minF, maxF))

