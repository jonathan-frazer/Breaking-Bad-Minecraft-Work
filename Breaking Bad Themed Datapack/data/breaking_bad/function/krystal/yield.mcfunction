#Update Crack Texture
execute store result entity @s item.components."minecraft:custom_model_data" int 1.0 run scoreboard players add @s SRXCrack 1

#Destroy if Fully Broken
execute if score @s SRXCrack matches 1802260.. run function breaking_bad:krystal/destroy
    #Exception Case(because I was dumb)
    execute if score @s SRXCrack matches 1802250 run scoreboard players add @s SRXCrack 1 

#Yield out Crystal
summon item ~ ~1.0 ~ {PickupDelay:10s,Item:{id:"minecraft:prismarine_shard",count:1,components:{"custom_model_data":1802249,"minecraft:custom_name":'{"italic":false,"text":"Krystal Duší"}',"minecraft:custom_data":{BreakingBad:1b}}},Motion:[0.0,0.25,0.0]}

#Sound
playsound entity.turtle.egg_break master @a[distance=..12] ~ ~ ~ 0.55 1.2 0.55
