#Crafting
    #Výtažek z Duší
    execute as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",count:1}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{id:"minecraft:soul_sand",count:1}}] if block ~ ~ ~ water_cauldron run function breaking_bad:craft/brown_potion

    #Krystal Duší
    execute as @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_data":{BreakingBad:1b}}}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{id:"minecraft:bone_meal",count:1}}] if entity @n[distance=..1,type=item,nbt={Item:{id:"minecraft:glowstone_dust",count:1,components:{"minecraft:custom_data":{BreakingBad:1b}}}}] if block ~ ~-0.5 ~ smithing_table run function breaking_bad:craft/krystal

    #Krystal Duši
    execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_data":{BreakingBad:1b}}}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}}}] run function breaking_bad:craft/krystal_poison
    execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_data":{BreakingBad:1b}}}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}] run function breaking_bad:craft/krystal_poison
    execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_data":{BreakingBad:1b}}}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{count:1,components:{"minecraft:potion_contents":{potion:"minecraft:long_poison"}}}}] run function breaking_bad:craft/krystal_poison

#Cycle every Second
schedule function breaking_bad:mainhalfsec 10t