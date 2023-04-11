coins = 0

collectCoins = (amount=1) ->
    coins += amount

printCoins = ->
    print "Coins: " .. coins

collectCoins!
collectCoins!
collectCoins 20
printCoins!
