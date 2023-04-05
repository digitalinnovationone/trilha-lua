-- Constants
local ID = "nyff.topo"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.description =
[[Ufa, os lobos foram embora. Depois de muito esforço você chega no topo, e vê uma vista incrível, que aventura!

No topo da montanha você encontra um baú contendo uma chave de ouro, alguém deve ter a esquecido aqui.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "Pegar a chave e seguir para a praia de Kalandra! Qualquer coisa pra sair desse frio...",
    nil,
    function()
        game.hasKey = true
    end
))

return node
