set MAX_RAM=5G
IF EXIST "server.properties" (
	java -Xmx%MAX_RAM% -jar fabric-server-mc.1.18.2-loader.0.14.11-launcher.0.11.1.jar nogui
	) ELSE (
	copy default\server.properties
	java -Xmx%MAX_RAM% -jar fabric-server-mc.1.18.2-loader.0.14.11-launcher.0.11.1.jar nogui
	)