set MAX_RAM=5G
IF EXIST "server.properties" (
	java -Xmx%MAX_RAM% -jar fabric-server-mc.1.18.2-loader.0.14.11-launcher.0.11.1.jar nogui
	) ELSE (
	curl -L -o server.properties https://www.dropbox.com/s/s8y55y1lzyegrzd/server.properties?dl=1
	java -Xmx%MAX_RAM% -jar fabric-server-mc.1.18.2-loader.0.14.11-launcher.0.11.1.jar nogui
	)