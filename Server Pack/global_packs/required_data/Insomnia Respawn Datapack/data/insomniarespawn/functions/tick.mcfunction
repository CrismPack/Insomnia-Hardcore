#scoreboard players add @a isDead

execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run tellraw @s [{"selector":""},{"text":"You have respawned!", "color": "#55FF55"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run spawn
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run home tp 1
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run origin gui @s
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run gamemode survival