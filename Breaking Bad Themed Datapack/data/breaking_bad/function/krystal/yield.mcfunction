#Update Crack Texture
execute store result entity @s item.components."minecraft:custom_model_data" int 1.0 run scoreboard players add @s SRXCrack 1

#Destroy if Fully Broken
execute if score @s SRXCrack matches 1802260.. run function breaking_bad:krystal/destroy

#Yield out Prismarine
summon item ~ ~0.2 ~ {PickupDelay:10s,Item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Krystal Duší"}',"minecraft:custom_data":{BreakingBad:1b},"minecraft:enchantment_glint_override":true}},Motion:[0.0,0.01,0.0]}