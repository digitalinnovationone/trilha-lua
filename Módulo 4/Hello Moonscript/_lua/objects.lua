local Block
do
  local _class_0
  local _base_0 = {
    isGrass = function(self)
      return self.type == "Grass"
    end,
    setPosition = function(self, x, y, z)
      if x == nil then
        x = 0
      end
      if y == nil then
        y = 0
      end
      if z == nil then
        z = 0
      end
      self.position = {
        x = x,
        y = y,
        z = z
      }
    end,
    __tostring = function(self)
      return tostring(self.type) .. " Block at " .. tostring(self.position.x) .. ", " .. tostring(self.position.y) .. ", " .. tostring(self.position.z)
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, type)
      self.type = type
      self.position = {
        x = 0,
        y = 0,
        z = 0
      }
    end,
    __base = _base_0,
    __name = "Block"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Block = _class_0
end
local Grass
do
  local _class_0
  local _parent_0 = Block
  local _base_0 = {
    __tostring = function(self)
      return _class_0.__parent.__base.__tostring(self)
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self)
      return _class_0.__parent.__init(self, "Grass")
    end,
    __base = _base_0,
    __name = "Grass",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        local parent = rawget(cls, "__parent")
        if parent then
          return parent[name]
        end
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  Grass = _class_0
end
local myBlock = Grass()
myBlock:setPosition(404, 63, -1700)
local myBlock2 = Block("Snow")
myBlock2:setPosition(0, 202, 0)
print(myBlock)
return print(myBlock2)
