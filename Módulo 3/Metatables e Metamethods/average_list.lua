local list1 = {1, 2, 3}
local list2 = {2}

local meta = {}

meta.average = function(list)
    local sum = 0
    for _, v in pairs(list) do
        sum = sum + v
    end
    return sum / #list
end

meta.__lt = function(t1, t2)
    -- Less Than
    return meta.average(t1) < meta.average(t2)
end

meta.__le = function(t1, t2)
    -- Less Than or Equal To
    return meta.average(t1) <= meta.average(t2)
end

meta.__eq = function(t1, t2)
    -- Equals
    return meta.average(t1) == meta.average(t2)
end

setmetatable(list1, meta)
setmetatable(list2, meta)

print(string.format("<  %s", list1 < list2))
print(string.format("<= %s", list1 <= list2))
print(string.format(">  %s", list1 > list2))
print(string.format(">= %s", list1 >= list2))
print(string.format("== %s", list1 == list2))