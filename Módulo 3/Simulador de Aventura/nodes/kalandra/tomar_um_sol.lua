-- Constants
local ID = "kalandra.tomar_um_sol"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Fim da aventura"
node.gameWon = true
node.description = "Você ficou por mais algumas horas na praia e descansou bastante. Quando acordou, decidiu voltar para casa."

return node
