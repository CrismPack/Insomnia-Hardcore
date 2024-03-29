execute as @a[gamemode=spectator] at @a[gamemode=spectator] run function insomniarespawn:deadmessage
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run tp @s 0.5 0 0.5

execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0..1 run function insomniarespawn:resurrection


# Teleports new players to the correct location
execute as @a[tag=!notNew] at @a[tag=!notNew] run tp @s 0.5 0 0.5
execute as @a[tag=!notNew] at @a[tag=!notNew] run tag @s add notNew