#Kill Items
kill @n[distance=..1,type=item,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}}}]
kill @n[distance=..1,type=item,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}]
kill @n[distance=..1,type=item,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:long_poison"}}}}]

#Sound
playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 0.5 2 0.5

#Particle
particle dust{color:[0.184,0.502,0.000],scale:1} ~ ~ ~ 0.125 0.125 0.125 1 5 normal

#Poison the Crystal
data merge entity @s {PickupDelay:10s,Item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Krystal Duši"}',"custom_model_data":1802249,"minecraft:custom_data":{BreakingBad:1b,Poisoned:true}}},Motion:[0.0,0.01,0.0]}