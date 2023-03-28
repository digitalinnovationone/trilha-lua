local function readFile(filepath)
    local file = io.open(filepath, "r")
    local fileContent = file:read("a")
    return fileContent
end

local function readFileWithPcall(filepath)
    local success, result = pcall(function()
        local file = io.open(filepath, "r")
        local fileContent = file:read("a")
        return fileContent
    end)
    return success, result
end

local function readFileWithXpcall(filepath)
    local success, result = xpcall(function()
        local file = io.open(filepath, "r")
        local fileContent = file:read("a")
        return fileContent
    end,
    function(err)
        -- Message Handler
        return "The file doesn't exist! Error: " .. err
    end)
    return success, result
end

-- PROTECTED CALL
local filepaths = {
    "resources/example.json",
    "resources/banana.nil",
}
for _, filepath in pairs(filepaths) do
    -- local success, result = pcall(readFile, filepath)
    -- local success, result = readFileWithPcall(filepath)
    -- local success, result = readFileWithXpcall(filepath)
    
    local success, result = pcall(function()
        return readFile(filepath)
    end)
    if not success then
        print(string.format("Tentamos ler o arquivo %s, mas ocorreu um erro: %s", filepath, result))
    end
end

print("Teste finalizado, deu tudo certo!")
