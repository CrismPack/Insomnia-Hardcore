ServerEvents.tick(event => {
    // Changes the keepinventory back to "true" for the player if they still have a life in reserve. This ensures that keepinv gets re-enabled after a respawn wave. (Requires 'Individual Keep Inventory' to be installed)
    event.server.runCommandSilent(`execute as @a at @a if score @s isDead <= dummy lifeReserveAmount run ikeepinv set @s true`);
    
    // Changes the keepinventory to "false" for the player if they have run out of lives. Making them drop their items if they loose their final life. (Requires 'Individual Keep Inventory' to be installed)
    event.server.runCommandSilent(`execute as @a at @a if score @s isDead > dummy lifeReserveAmount run ikeepinv set @s false`);
});