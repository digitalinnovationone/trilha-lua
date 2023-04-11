round = (n=0) -> math.floor(n + 0.5)

average = (x, y, rounding=false) ->
    result = (x + y) / 2
    rounding and round(result) or result

print average 2, 7, true
print(average(2, 7, true))
