#Crafting
    #Ametystový Prášek
    execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",count:1}}] at @s if block ~ ~-0.5 ~ grindstone run function breaking_bad:craft/amethyst_dust

#Consuming
    #Krystal Duší
    execute as @a unless predicate breaking_bad:holding_krystal/either run scoreboard players set @s SRXKrystalUse 0
    execute as @a[scores={SRXKrystalUse=15..}] run function breaking_bad:krystal/consume/0

#Duration
    #Krystal Duši
    scoreboard players remove @a[scores={SRXKrystalPoison=1..}] SRXKrystalPoison 1
    execute as @a[scores={SRXKrystalPoison=..0}] run function breaking_bad:krystal/consume/2p