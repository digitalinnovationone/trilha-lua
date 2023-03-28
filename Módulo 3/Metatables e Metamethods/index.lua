local dictionary = {}

local meta = {
    __index = function(t, key)
        print("__index com chave", key)
        return "Transparente"
    end,
    
    __newindex = function(t, key, value)
        print("__newindex com chave", key, "e valor", value)
        rawset(t, key, value)
    end
}

setmetatable(dictionary, meta)

print(dictionary.banana)
dictionary.banana = "Amarela"
print(dictionary.banana)
dictionary.banana = "Verde"
print(dictionary.banana)
dictionary.banana = nil
print(dictionary.banana)
dictionary.banana = "Azul"
print(dictionary.banana)
