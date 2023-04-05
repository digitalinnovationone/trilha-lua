-- Constants
local ID = "nyff.escalar"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Parecia mais fácil nos filmes"
node.gameOver = true
node.description = [[Depois de escalar apenas 10 metros você escorregou e caiu. Um fim trágico para uma curta aventura.]]

return node