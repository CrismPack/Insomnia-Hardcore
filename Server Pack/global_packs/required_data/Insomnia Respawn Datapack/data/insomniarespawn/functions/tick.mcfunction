execute as @a[gamemode=spectator] at @a[gamemode=spectator] run function insomniarespawn:deadmessage
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run tp @s 0 200 0

execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0..1 run function insomniarespawn:resurrection