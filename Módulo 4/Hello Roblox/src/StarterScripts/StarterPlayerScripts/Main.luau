-- Load GameData
_G.gameData = require(game.ReplicatedStorage.gameData)

-- Dependencies
local Tile = require(game.ReplicatedStorage.Tile)
local GrowthManager = require(game.ReplicatedStorage.GrowthManager)

-- Services
local RunService = game:GetService("RunService")

-- Create Tile objects
local tilesChildren = game.Workspace.Tiles:GetChildren()
for _, tileInstance in tilesChildren do
    local tile = Tile:new(tileInstance)
    table.insert(_G.gameData.tiles, tile)
    print(tile.position)
end

-- Criar loop pro GrowthManager com delta time
RunService.Heartbeat:Connect(function(deltaTime)
    GrowthManager:run(deltaTime)
end)