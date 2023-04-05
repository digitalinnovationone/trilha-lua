local coroutines = {}

local numberRate = 0
local colorRate = 0

table.insert(coroutines, coroutine.create(function()
    local totalAmountOfNumbers = 100
    for i = 1, totalAmountOfNumbers, 1 do
        print("Processing Numbers #" .. i)
        numberRate = i / totalAmountOfNumbers
        if (i % 10) == 0 then
            coroutine.yield()
        end
    end
end))

table.insert(coroutines, coroutine.create(function()
    local colors = { "red", "green", "blue", 'yellow', "orange", "white", "black", "purple" }
    for i, color in pairs(colors) do
        colorRate = i / #colors
        print("Processing Color: " .. color)
        coroutine.yield()
    end
end))

table.insert(coroutines, coroutine.create(function()
    while true do
        local appPercentage = (numberRate + colorRate) / 2
        local appPercentageInt = math.floor(appPercentage * 100 + 0.5)
        print(string.format("App Progress Bar: %d%%", appPercentageInt))
        if appPercentageInt >= 100 then
            print("The End!")
            break
        else
            coroutine.yield()
        end
    end
end))

----------

-- Infinite loop
while true do
    local hasActiveThreads = false

    -- Iterate through threads
    for i, thread in pairs(coroutines) do

        -- Get status
        local status = coroutine.status(thread)
        local isSuspended = status == "suspended"
        local isDead = status == "dead"

        -- Mark active thread flag
        if status ~= "dead" then
            hasActiveThreads = true
        end

        -- Resume threads
        if isSuspended then
            coroutine.resume(thread)
        end
    end

    -- End program
    if not hasActiveThreads then
        break
    end
end