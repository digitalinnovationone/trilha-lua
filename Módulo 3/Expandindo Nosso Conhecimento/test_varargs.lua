-- varargs
-- Variable Arguments
-- Argumentos Variáveis

local function calculateAverage(x, y, z, ...)
    local list = { x, y, z, ... }
    local sum = 0
    for k, v in pairs(list) do
        sum = sum + v
    end
    local count = #list
    return count ~= 0 and (sum / count) or 0
end

print(calculateAverage()) -- 0
print(calculateAverage(1)) -- 1
print(calculateAverage(1, 2, 3)) -- 2
print(calculateAverage(2, 2, 10)) -- 4.66
print(calculateAverage(1, 2, 3, 500, 404, 1920)) -- Número alto, 471