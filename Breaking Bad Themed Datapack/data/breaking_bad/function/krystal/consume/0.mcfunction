#Reset Schedules and Scores
schedule clear breaking_bad:krystal/consume/reset
scoreboard players reset @s SRXKrystalUse
schedule function breaking_bad:krystal/consume/reset 16t

#Sound Effects
    playsound minecraft:entity.player.breath master @a[distance=..16] ~ ~ ~ 1 1.5 1

#Potion Effects
effect give @s haste 120 1 false
effect give @s speed 120 1 false
effect give @s jump_boost 120 0 false
effect give @s strength 120 0 false
effect give @s glowing 120 0 false

#If Poisoned
    execute if predicate breaking_bad:holding_krystal/mainhand if predicate breaking_bad:holding_poison_krystal/mainhand run function breaking_bad:krystal/consume/1p
    execute if predicate breaking_bad:holding_krystal/offhand if predicate breaking_bad:holding_poison_krystal/offhand run function breaking_bad:krystal/consume/1p

#Remove Item
    #MainHand
    item modify entity @s[predicate=breaking_bad:holding_krystal/mainhand] weapon.mainhand breaking_bad:consume
    #Else, Offhand
    execute unless predicate breaking_bad:holding_krystal/mainhand run item modify entity @s[predicate=breaking_bad:holding_krystal/offhand] weapon.offhand breaking_bad:consume