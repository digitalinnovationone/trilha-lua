local coins = 0
local collectCoins
collectCoins = function(amount)
  if amount == nil then
    amount = 1
  end
  coins = coins + amount
end
local printCoins
printCoins = function()
  return print("Coins: " .. coins)
end
collectCoins()
collectCoins()
collectCoins(20)
return printCoins()
