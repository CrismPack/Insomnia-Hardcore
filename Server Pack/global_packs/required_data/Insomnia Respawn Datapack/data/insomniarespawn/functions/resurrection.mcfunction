execute as @a[gamemode=adventure] at @a[gamemode=adventure] if score @s isDead matches 0 run tellraw @s [{"text":"A respawn wave have granted you new life! Try to stay alive this time...", "color": "green"}]
execute as @a[gamemode=adventure] at @a[gamemode=adventure] if score @s isDead matches 0 run tellraw @s [{"text":"You have 1 life!", "color": "yellow"}]
execute as @a[gamemode=adventure] at @a[gamemode=adventure] if score @s isDead matches 1 run tellraw @s [{"text":"You have respawned!", "color": "green"}]
execute as @a[gamemode=adventure] at @a[gamemode=adventure] if score @s isDead matches 1 run tellraw @s [{"text":"0 lives left! If you die again you'll have to wait for a respawn wave!", "color": "red"}]
#execute as @a[gamemode=spectator] at @a[gamemode=spectator] run home tp 1    # Essential-Commands required
execute as @a[gamemode=adventure] at @a[gamemode=adventure] if score @s isDead matches 0 run origin gui @s
execute as @a[gamemode=adventure] at @a[gamemode=adventure] run effect give @s minecraft:absorption 300 1
execute as @a[gamemode=adventure] at @a[gamemode=adventure] run give @s minecraft:potion{Potion:"recallpotion:recall"} 1
execute as @a[gamemode=adventure] at @a[gamemode=adventure] run function fp:unfreeze
execute as @a[gamemode=adventure] at @a[gamemode=adventure] run gamemode survival