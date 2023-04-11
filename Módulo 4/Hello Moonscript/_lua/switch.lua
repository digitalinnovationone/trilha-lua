local coins = 100
local message
local _exp_0 = coins
if 0 == _exp_0 then
  message = "You have no coins"
elseif 1 == _exp_0 then
  message = "You have one coin"
else
  message = "You have " .. tostring(math.floor(coins / 3 + 0.5)) .. " coins"
end
return print(message)
