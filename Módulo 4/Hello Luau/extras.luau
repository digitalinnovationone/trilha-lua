-- If expressions
local coins = 5
local plural = if coins == 1 then
    ""
else
    "s"
print("Isso custa " .. coins .. " moeda" .. plural)



-- Super string
print(`Isso custa {coins} moeda{plural}`)



-- Iteração genérica
print("\nIteration:")
local list = {"Banana", "Apple", "Kiwi", "Pineapple", "Wild Blueberry"}
for i, value in list do -- Sem pairs!
    local len = string.len(value)
    -- Continue if text is too short
    if len <= 6 then
        continue
    end
    print(i, value, len)
end
