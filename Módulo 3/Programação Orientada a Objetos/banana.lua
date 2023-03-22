local class = require("libs.middleclass")

local Banana = class("Banana")

-- Constructor
function Banana:initialize(age)
    self.age = age
end

function Banana:isGood()
    return self.age >= 7
end

return Banana
