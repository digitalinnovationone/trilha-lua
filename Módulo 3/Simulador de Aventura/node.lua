local class = require("libs.middleclass")

---@class Node
local Node = class("Node")

function Node:initialize(id)
    self.id = id ---@type string
    self.title = nil ---@type string
    self.description = nil ---@type string
    self.header = nil ---@type string
    self.choices = {} ---@type Choice[]
    self.gameOver = false ---@type boolean
    self.gameWon = false ---@type boolean
end

return Node