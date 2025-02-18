#Crafting
    #Výtažek z Duší
    execute as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",count:1}}] at @s if entity @n[distance=..1,type=item,nbt={Item:{id:"minecraft:soul_sand",count:1}}] if block ~ ~ ~ water_cauldron run function breaking_bad:craft/brown_potion


#Cycle every Second
schedule function breaking_bad:mainsec 20t