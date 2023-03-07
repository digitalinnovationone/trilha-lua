-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- IDs
local ID_CREEPER <const> = 1
local ID_SKELETON <const> = 2
local ID_ZOMBIE <const> = 3
local ID_DOLPHIN <const> = 508

-- Names
local names = {}
names[ID_CREEPER] = "Creeper"
names[ID_SKELETON] = "Skeleton"
names[ID_ZOMBIE] = "Zombie"
names[ID_DOLPHIN] = "Golfinho"

-- Colors
local colors = {}
colors[ID_CREEPER] = "Verde"
colors[ID_SKELETON] = "Branco"
colors[ID_ZOMBIE] = "Verde"
colors[ID_DOLPHIN] = "Azul"

-- Programa
print("Digite o ID da criatura.")
local id = io.read("*n")
local name = names[id]
local color = colors[id]
if name == nil then
    print("Essa criatura não existe.")
else
    print(string.format("A criatura que você escolheu foi o %s, e sua cor é %s.", name, color))
end
