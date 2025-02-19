#Crystal Structure
kill @s
kill @n[type=item_display,name="bb_krystalStucture"]

#Destroy the cow on the Crystal
effect clear @n[type=cow,name="bb_whitePaneKrystal"] resistance
tp @n[type=cow,name="bb_whitePaneKrystal"] 0 -1000 0
execute positioned 0 -1000 0 run kill @n[type=cow,name="bb_whitePaneKrystal"] 

#Sound
playsound block.glass.break master @a[distance=..12] ~ ~ ~ 1.0 0.85 1.0