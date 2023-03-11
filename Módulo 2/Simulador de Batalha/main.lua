--[[
    | Prismarine Colossus
    | 
    | Enormes estátuas de prismarine que medem mais de 20 metros de altura. Sua aparência ameaçadora pode assustar até os mais bravos guerreiros.
    | Eles têm olhos turquesa brilhantes, mas um elogio não vai te ajudar muito durante uma batalha.
    | 
    | Atributos
    | Vida      ▰▰▰▰▰▰▰▰▰▰
    | Ataque    ▰▰▰▰▱▱▱▱▱▱
    | Defesa    ▰▰▰▰▰▰▰▰▰▰
    | Agilidade ▰▱▱▱▱▱▱▱▱▱

    O que você vai fazer?
    1. Atacar com a espada.
    2. Usar poção de regeneração.
    3. Atirar uma pedra.
    4. Se esconder.
    >

]]

-- Dependencies
local player = require("definitions.player")
local colossus = require("definitions.colossus")

-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Header
print([[
=====================================================================
               _
    _         | |
   | | _______| |---------------------------------------------\
   |:-)_______|==[]============================================>
   |_|        | |---------------------------------------------/
              |_|

               -----------------------------------------

                     ⚔ SIMULADOR DE BATALHA ⚔

=====================================================================

            Você empunha sua espada e se prepara para lutar.
                         É hora da batalha!

]])

-- Obter definição do jogador
print(string.format("A vida do jogador é %d/%d", player.health, player.maxHealth))

-- Obter definição do monstro
local boss = colossus

-- Apresentar o monstro

-- Começar o loop de batalha
