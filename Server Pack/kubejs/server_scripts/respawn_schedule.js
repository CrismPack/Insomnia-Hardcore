function getHoursToNextExecution(config) {
    const currentTime = new Date();
    const currentDay = currentTime.getDay(); // 0: Sunday, 1: Monday, ..., 6: Saturday
    const currentHour = currentTime.getHours();
    const currentMinute = currentTime.getMinutes();

    // Get target hour, minute, and days from config
    const targetHour = config.targetHour;
    const targetMinute = config.targetMinute;
    const days = config.days;

    // Convert current time to minutes for easier calculation
    const currentTotalMinutes = currentDay * 24 * 60 + currentHour * 60 + currentMinute;
    
    // Initialize the minimum time difference to a large number
    let minMinutesDifference = Infinity;

    // Loop through the days to find the next execution time
    for (let day of days) {
        let targetDate = new Date(currentTime);
        targetDate.setDate(currentTime.getDate() + ((day + 7 - currentDay) % 7));
        targetDate.setHours(targetHour);
        targetDate.setMinutes(targetMinute);
        targetDate.setSeconds(0);
        targetDate.setMilliseconds(0);
        
        const targetTotalMinutes = day * 24 * 60 + targetHour * 60 + targetMinute;
        
        // Calculate the time difference in minutes
        let minutesDifference = (targetDate - currentTime) / 60000; // Convert milliseconds to minutes
        
        // If the target date is in the past, move to the next week
        if (minutesDifference < 0) {
            minutesDifference += 7 * 24 * 60;
        }

        minMinutesDifference = Math.min(minMinutesDifference, minutesDifference);
    }

    // Convert the minimum minutes difference to hours and round down to the nearest integer
    return Math.floor(minMinutesDifference / 60);
}


let commandExecuted = false;
let commandExecutedMinutely = false;

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
    const currentSecond = currentTime.getSeconds();
    // Get target hour and minute from config
    const targetHour = config.targetHour;
    const targetMinute = config.targetMinute;
    const days = config.days;

    // Executes every minute
    if (currentSecond === 0) {
        if (!commandExecutedMinutely) {
        // Execute the command
            const hoursLeft = getHoursToNextExecution(config);
            event.server.runCommandSilent(`scoreboard players set dummy respawnCountdown ${hoursLeft}`);
            commandExecutedMinutely = true;
        }
    }

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
