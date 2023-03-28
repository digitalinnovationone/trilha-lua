local dictionary = {
    Cat = "Yellow",
    Dog = "Brown"
}

local meta = {}
meta.__len = function(t)
    local counter = 0
    for _ in pairs(t) do
        counter = counter + 1
    end
    return counter
end

setmetatable(dictionary, meta)

print(#dictionary)
