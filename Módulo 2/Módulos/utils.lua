local utils = {}

function utils.helloFromUtils()
    print("Hello from Utils")
end

---
---Essa função habilita o modo UTF-8 no terminal.
---
function utils.enableUtf8()
    os.execute("chcp 65001")
end

---
---Calcula uma barra de progresso ASCII baseada em um atributo.
---@param attribute number Número de 0 a 10.
---@return string
---
function utils.getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

return utils