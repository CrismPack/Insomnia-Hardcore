scoreboard players operation dummy lifeCount = dummy lifeReserveAmount
scoreboard players operation dummy lifeCount -= @s isDead

execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run tellraw @s [{"text":"A respawn wave have granted you new life! Try to stay alive this time...", "color": "green"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run tellraw @s [{"text":"You have ", "color": "yellow"},{"score":{"name":"dummy","objective":"lifeCount"},"color":"yellow"}, {"text":" lives in reserve!", "color": "yellow"}]
# execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead = dummy lifeReserveAmount run tellraw @s [{"text":"You have respawned!", "color": "green"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead = dummy lifeReserveAmount run tellraw @s [{"score":{"name":"dummy","objective":"lifeCount"},"color":"red"},{"text":" lives remaining! If you die again you'll have to wait for a respawn wave!", "color": "red"}]
execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run origin gui @s
# execute as @a[gamemode=spectator] at @a[gamemode=spectator] if score @s isDead matches 0 run clear
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run effect give @s minecraft:absorption 300 1
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run gamemode survival