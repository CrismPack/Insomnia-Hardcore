scoreboard objectives add isDead deathCount "isDead"
execute run gamerule spectatorsGenerateChunks true
execute run gamerule spawnRadius 0

#Runs some code only the first time the datapack is loaded
scoreboard objectives add testFirst dummy
execute unless score isFirst testFirst matches 1 run scoreboard players set isFirst testFirst 0
execute if score isFirst testFirst matches 0 run function insomniarespawn:run_once
execute if score isFirst testFirst matches 1 run tellraw @a {"text":"Not first load, continuing...", "color": "#55FF55"}
scoreboard players set isFirst testFirst 1

#Used to display days until a respawn wave
scoreboard objectives add respawnCountdown dummy

tellraw @a {"text":"Insomnia Respawn Datapack has loaded", "color": "#55FF55"}



scoreboard objectives add lifeReserveAmount dummy

# The value lifeReserveAmount controls the amount of lives players have in reserve.
scoreboard players set dummy lifeReserveAmount 1


scoreboard objectives add maxDeaths dummy
scoreboard players operation dummy maxDeaths = dummy lifeReserveAmount
scoreboard objectives add additionVal dummy
scoreboard players set dummy additionVal 1
scoreboard players operation dummy maxDeaths += dummy additionVal


scoreboard objectives add lifeCount dummy