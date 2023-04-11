local round
round = function(n)
  if n == nil then
    n = 0
  end
  return math.floor(n + 0.5)
end
local average
average = function(x, y, rounding)
  if rounding == nil then
    rounding = false
  end
  local result = (x + y) / 2
  return rounding and round(result) or result
end
print(average(2, 7, true))
return print(average(2, 7, true))
