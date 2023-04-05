-- Dependencies
local GameData = require("game_data")
local Engine = require("engine")
local nodeLoader = require("node_loader")
local utils = require("utils")

-- Enable warnings
warn("@on")

-- Enable UTF-8
utils.enableUtf8()

-- Create GameData
local gameData = GameData:new() ---@type GameData
_G.game = gameData

-- Load nodes
nodeLoader.loadNodes()
game.activeNode = nodeLoader.getInitialNode()

-- Check for errors in NodeLoader
if nodeLoader.hasErrors() then
    print("Found errors on NodeLoader, aborting execution!")
    os.exit()
end

-- Start engine
local engine = Engine:new() ---@type Engine
engine:runMainLoop()
