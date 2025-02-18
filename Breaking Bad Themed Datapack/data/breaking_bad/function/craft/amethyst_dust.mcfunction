#Sound
playsound block.grindstone.use master @a[distance=..12] ~ ~ ~ 0.75 1 0.75

#Particle
particle dust{color:[0.968,0.558,0.996],scale:1} ~ ~ ~ 0.125 0.125 0.125 1 5 normal

#Spawn Potion
data merge entity @s {Item:{id:"minecraft:glowstone_dust",count:1,components:{"minecraft:custom_data":{BreakingBad:1b},"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"italic":false,"text":"Ametystový Prášek"}'}}}