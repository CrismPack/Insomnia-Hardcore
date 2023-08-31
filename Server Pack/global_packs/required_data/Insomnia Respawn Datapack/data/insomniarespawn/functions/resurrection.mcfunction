execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run tellraw @s [{"text":"A respawn wave have granted you new life! Try to stay alive this time...", "color": "green"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run tellraw @s [{"text":"You have 1 life!", "color": "yellow"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 1 run tellraw @s [{"text":"You have respawned!", "color": "green"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 1 run tellraw @s [{"text":"0 lives left! If you die again you'll have to wait for a respawn wave!", "color": "red"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run origin gui @s
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run effect give @s minecraft:absorption 300 1
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run give @s minecraft:potion{Potion:"recallpotion:recall"} 1
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run gamemode survival