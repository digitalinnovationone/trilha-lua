-- Constants
local ID = "nyff.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Montanhas de Nyff"
node.description = "Está frio, a neve está por todo o lugar, e o silêncio é ensurdecedor. Para melhorar a situação, você percebe que esqueceu sua mochila em casa, e a única comida que lhe resta é uma batata do dia anterior."
node.header = [[
%{white}      /\
%{white}     /**\
%{white}    /****\   /\
%{white}   /      \ /**\
%{cyan}  /  /\    /    \    %{white}    /\    /\  /\      /\            /\/\/\  /\
%{cyan} /  /  \  /      \      /  \/\/  \/  \  /\/  \/\  /\  /\/ / /  \/  \
%{cyan}/  /    \/ /\     \    /    \ \  /    \/ /   /  \/  \/  \  /    \   \
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.floresta",
    "Buscar comida na floresta congelada."
))
table.insert(node.choices, Choice:new(
    "nyff.iglu",
    "Criar um iglu para se proteger do frio."
))
table.insert(node.choices, Choice:new(
    "nyff.congelou",
    "O frio é psicológico."
))

return node