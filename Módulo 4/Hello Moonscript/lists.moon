creatures = {
    "Creeper"
    "Skeleton"
    "Squid"
    "Ocelot"
    "Cat"
    "Wolf"
    "Dragon"
    "Chicken"
    "Dolphin"
}

for value in *creatures[2,,2]
    print value

print "---------------"
for creature in *creatures
    length = string.len(creature)
