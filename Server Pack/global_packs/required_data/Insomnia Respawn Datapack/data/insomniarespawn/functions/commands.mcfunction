execute as @a[gamemode=spectator] at @a[gamemode=spectator] run home tp 1
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run origin gui @s
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run effect give @a[gamemode=spectator] minecraft:absorption 300 1
#execute as @a[gamemode=spectator] at @a[gamemode=spectator] run effect give @a[gamemode=spectator] minecraft:resistance 300 1
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run tellraw @s [{"selector":""},{"text":"A respawn wave have granted you new life! Try to stay alive this time...", "color": "green"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run tellraw @s [{"selector":""},{"text":"You have 1 life!", "color": "yellow"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 1 run tellraw @s [{"selector":""},{"text":"You have respawned!", "color": "green"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 1 run tellraw @s [{"selector":""},{"text":"0 lives left! If you die again you'll have to wait for a respawn wave!", "color": "red"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run gamemode survival