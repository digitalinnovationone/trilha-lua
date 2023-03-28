local supermath = {}

setmetatable(supermath, {
    __index = math
})

function supermath.round(x)
    return math.floor(x + 0.5)
end

print(supermath.floor(2.3))
print(supermath.floor(2.7))
