print!

lowHealthThreshold = 0.25
health = 8
maxHealth = 10

healthRate = health / maxHealth
hasLowHealth = healthRate <= lowHealthThreshold
message = if hasLowHealth then "Low health" else "Normal health"

print message

print "!!! Warning !!!" if hasLowHealth

print "You're good! Carry on." unless hasLowHealth
