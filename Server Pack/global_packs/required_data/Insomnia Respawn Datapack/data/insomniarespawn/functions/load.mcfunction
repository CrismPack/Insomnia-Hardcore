scoreboard objectives add isDead deathCount "isDead"

scoreboard objectives add testFirst dummy
execute unless score isFirst testFirst matches 1 run scoreboard players set isFirst testFirst 0
execute if score isFirst testFirst matches 0 run function insomniarespawn:run_once
execute if score isFirst testFirst matches 1 run tellraw @a {"text":"Not first load, continuing...", "color": "#55FF55"}
scoreboard players set isFirst testFirst 1

tellraw @a {"text":"Insomnia Respawn Datapack has loaded", "color": "#55FF55"}