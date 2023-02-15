---
--- Contém o nome do monstro do nosso exemplo.
--- Isso é uma constante.
---
local MONSTER_NAME <const> = "Creeper"

-- Variáveis iniciais
local maxHealth = 10
local health = 10

-- Vamos aplicar um dano no Creeper
for i = 1, 6, 1 do
    health = health - 1
end

-- Calculamos algumas variáveis agora
local healthRate = health / maxHealth
local isHealthFull = health == maxHealth
local hasCriticalHealth = healthRate <= 0.15
local hasBeenDamaged = not isHealthFull
local isDead = health <= 0

-- O que aconteceu?
if isDead then
    print("O Creeper se foi.")
elseif hasBeenDamaged then
    print("O Crepeer tomou dano.")
else
    print("O Creeper está com vida cheia.")
end
