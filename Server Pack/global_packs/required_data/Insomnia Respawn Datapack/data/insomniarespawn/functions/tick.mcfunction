#scoreboard players add @a isDead

execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0..1 run function insomniarespawn:commands

#execute as @a[gamemode=spectator] at @a[gamemode=spectator] run tp ~ ~ ~