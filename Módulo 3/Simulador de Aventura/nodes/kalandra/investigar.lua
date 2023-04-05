-- Constants
local ID = "kalandra.investigar"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Praia de Kalandra"
node.description = "Você explora a região e encontra uma trilha que leva a uma inóspita caverna, que também parece vazia e abandonada. Nas paredes da caverna existem escrituras sobre a Lenda do Kraken, e desenhos que te dão a entender que existe uma magia que pode derrota-lo."

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.tomar_um_sol",
    "Kraken? Magia? O que é isso, um filme de aventura? Deixar essa bobagem de lado e voltar para a praia pra tomar um sol."
))
table.insert(node.choices, Choice:new(
    "kalandra.explorar_caverna",
    "Incrível! Explorar a caverna mais a fundo para decifrar seus segredos."
))
table.insert(node.choices, Choice:new(
    "kalandra.kraken_game_over",
    "Todo esse pavor por causa de um polvo? Voltar para a praia e dar um mergulho no mar pra provar que isso não existe."
))

return node