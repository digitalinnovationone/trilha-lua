coins = 100

message = switch coins
    when 0
        "You have no coins"
    when 1
        "You have one coin"
    else
        "You have #{math.floor(coins / 3 + 0.5)} coins"

print message