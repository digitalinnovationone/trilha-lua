-- Constants
local ID = "kalandra.armadilha"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Ops"
node.gameOver = true
node.description = "Você sem querer ativou uma armadilha do calabouço, e não resistiu."

return node
