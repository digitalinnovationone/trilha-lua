local names = {"Creeper", "Zombie", "Skeleton", "Phantom"}

for i = 1, #names, 1 do
    local name = names[i]
    print(name)
end

print('----------------')

local numbers = {40, 22, 8, 27, 31, 35, 39}

for key, value in pairs(names) do
    print(key, value)
end
