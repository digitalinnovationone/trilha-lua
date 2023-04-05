-- Constants
local ID = "start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Uma nova aventura"
node.description = "Em uma bela manhã ensolarada você acorda e se prepara para embarcar em uma nova aventura, mas uma importante decisão deve ser tomada. Para onde você vai?"
node.header = [[%{magenta}
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
█ ▄▄▀█ ▄▀█▀███▀█ ▄▄█ ▄▄▀█▄ ▄█ ██ █ ▄▄▀█ ▄▄████
█ ▀▀ █ █ ██ ▀ ██ ▄▄█ ██ ██ ██ ██ █ ▀▀▄█ ▄▄████
█ ██ █▄▄████▄███▄▄▄█▄██▄██▄███▄▄▄█▄█▄▄█▄▄▄████
██████████████████████████████████████████████
███ ▄▄▄ ██▄██ ▄▀▄ █ ██ █ ██ ▄▄▀█▄ ▄█▀▄▄▀█ ▄▄▀█
███▄▄▄▀▀██ ▄█ █▄█ █ ██ █ ██ ▀▀ ██ ██ ██ █ ▀▀▄█
███ ▀▀▀ █▄▄▄█▄███▄██▄▄▄█▄▄█▄██▄██▄███▄▄██▄█▄▄█
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "Para a praia ensolarada de Kalandra"
))
table.insert(node.choices, Choice:new(
    "nyff.start",
    "Para as montanhas geladas de Nyff"
))

return node