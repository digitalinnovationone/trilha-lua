character =
    name: "Violet"
    classe: "Espadachin"
    health: 10
    maxHealth: 10
    strength: 10
    textColor: red: 230, green: 50, blue: 210

for k,v in pairs(character)
    print k, v

print character.textColor.blue