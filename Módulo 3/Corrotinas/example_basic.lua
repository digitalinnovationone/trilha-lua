local function printFruits()
    print("Banana")
    coroutine.yield()
    print("Apple")
    coroutine.yield()
    print("Kiwi")
end

local thread = coroutine.create(printFruits) -- Isso retorna um "thread"
-- Thread vai ter um estado

print(coroutine.status(thread)) -- Suspended, Running, Dead
coroutine.resume(thread)
