scoreboard objectives add freezeGamemode dummy
scoreboard objectives add freezeMilkCount dummy
scoreboard objectives add freezeStatus dummy
scoreboard players set @a freezeStatus 0
scoreboard objectives add fpGetMilks dummy
scoreboard players set #fp fpGetMilks 1
scoreboard objectives add fpSetToAdventure dummy
scoreboard players set #fp fpSetToAdventure 0
scoreboard objectives add fpBuildCage dummy
scoreboard players set #fp fpBuildCage 1
scoreboard objectives add fpFreezeMsg dummy
scoreboard players set #fp fpFreezeMsg 0
gamerule sendCommandFeedback false