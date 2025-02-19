#Kill Items
kill @s
kill @n[distance=..1,type=item,nbt={Item:{id:"minecraft:glowstone_dust",count:1,components:{"minecraft:custom_data":{BreakingBad:1b}}}}]
kill @n[distance=..1,type=item,nbt={Item:{id:"minecraft:bone_meal",count:1}}]

#Sound
playsound entity.zombie_villager.cure master @a[distance=..12] ~ ~ ~ 0.2 2 0.2

#Particle
particle dust{color:[1.000,1.00,1.000],scale:1} ~ ~ ~ 0.125 0.01 0.125 1 5 normal

#Make Glass Pane
execute align xyz run summon item_display ~ ~ ~ {CustomName:'"bb_krystalStucture"',start_interpolation:-1,interpolation_duration:7,transformation:{translation:[0.5f,0.03f,0.5f],left_rotation:[0.4f,0.0f,0f,0.395f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},item:{id:"minecraft:white_stained_glass_pane",count:1}}
execute align xyz run summon item_display ~ ~ ~ {CustomName:'"bb_krystalCracker"',start_interpolation:-1,interpolation_duration:7,transformation:{translation:[0.5f,0.03f,0.5f],left_rotation:[0.4f,0.0f,0f,0.395f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]},item:{id:"minecraft:knowledge_book",count:1,components:{custom_model_data:1802249}}}
scoreboard players set @n[type=item_display,name="bb_krystalCracker"] SRXCrack 1802249

#Creating Hitbox for the Glass Pane
execute align xyz run summon cow ~0.5 ~-0.9 ~0.5 {Silent:1b,Team:"Intangible",NoAI:1b,NoGravity:1b,CustomName:'"bb_whitePaneKrystal"',active_effects:[{id:"minecraft:resistance",amplifier:25,duration:-1,show_particles:0b,show_icon:0b,ambient:1b},{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],CustomNameVisible:false}