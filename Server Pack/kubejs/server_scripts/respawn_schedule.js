let commandExecuted = false;

// Load the configuration file
const configFilePath = 'kubejs/config/respawn.json';
const config = JsonIO.read(configFilePath);

ServerEvents.tick(event => {
    if (!config) return;

    // Get the current date and time
    const currentTime = new Date();
    const currentDay = currentTime.getDay(); // 0: Sunday, 1: Monday, ..., 6: Saturday
    const currentHour = currentTime.getHours();
    const currentMinute = currentTime.getMinutes();

    // Get target hour and minute from config
    const targetHour = config.targetHour;
    const targetMinute = config.targetMinute;
    const days = config.days;

    // Check if it's one of the specified days at the target time
    if (days.indexOf(currentDay) &&
        currentHour === targetHour && currentMinute === targetMinute) {
        if (!commandExecuted) {
        // Execute the command
            console.info('Executing Respawn Wave');
            event.server.runCommand('function insomniarespawn:respawn');
            commandExecuted = true;
        }
    } else {
        // Reset the flag if it's not the target time
        commandExecuted = false;
    }
});
