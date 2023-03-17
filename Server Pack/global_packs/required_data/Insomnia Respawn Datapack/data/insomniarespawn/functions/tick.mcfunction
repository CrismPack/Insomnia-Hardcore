execute as @a[gamemode=spectator] at @a[gamemode=spectator] run function fp:freeze
execute as @a[gamemode=adventure] at @a[gamemode=adventure] run effect give @s minecraft:invisibility 10
execute as @a[gamemode=adventure] at @a[gamemode=adventure] run effect give @s minecraft:blindness 10
execute as @a[gamemode=adventure] at @a[gamemode=adventure] run function insomniarespawn:deadmessage
execute as @a[gamemode=spectator] at @a[gamemode=spectator] run gamemode adventure

execute as @a[gamemode=adventure] at @a[gamemode=adventure] if score @s isDead matches 0..1 run function insomniarespawn:resurrection