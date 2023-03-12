#scoreboard players add @a isDead

execute as @a[gamemode=spectator] at @a[gamemode=spectator] run tellraw @s [{"selector":""},{"text":"You have respawned!", "color": "#55FF55"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run spawn
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run home tp 1
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run origin gui @s
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run gamemode survival