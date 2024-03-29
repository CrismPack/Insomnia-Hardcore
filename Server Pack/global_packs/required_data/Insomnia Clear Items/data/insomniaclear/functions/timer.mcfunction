kill @e[type=item]
tellraw @a {"text": "An otherworldly being has cleared dropped items!", "color": "green", "bold":"true"}
schedule function insomniaclear:timerload 1s