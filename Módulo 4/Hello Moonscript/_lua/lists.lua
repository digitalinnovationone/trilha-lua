local creatures = {
  "Creeper",
  "Skeleton",
  "Squid",
  "Ocelot",
  "Cat",
  "Wolf",
  "Dragon",
  "Chicken",
  "Dolphin"
}
for _index_0 = 2, #creatures, 2 do
  local value = creatures[_index_0]
  print(value)
end
print("---------------")
for _index_0 = 1, #creatures do
  local creature = creatures[_index_0]
  local length = string.len(creature)
end
