#Kill Items
kill @n[distance=..1,type=item,nbt={Item:{id:"minecraft:soul_sand",count:1}}]

#Sound
playsound entity.generic.splash master @a[distance=..12] ~ ~ ~ 0.5 1 0.5

#Particle
particle dust{color:[0.600,0.459,0.000],scale:1} ~ ~ ~ 0.125 0.125 0.125 1 5 normal

#Make Potion
data merge entity @s {Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_data":{BreakingBad:1b},"minecraft:custom_name":'{"italic":false,"text":"Výtažek z Duší"}',"minecraft:potion_contents":{custom_color:10056960,custom_effects:[{id:"minecraft:nausea",amplifier:3,duration:200,show_icon:1b},{id:"minecraft:poison",amplifier:2,duration:200,show_icon:1b}]}}}}