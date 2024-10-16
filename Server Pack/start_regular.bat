@echo off

:: Download Fabric server
call fabric_server_downloader.bat

:: Run the jar with the specified Java options
java -Xmx6G -jar fabric-server-mc.1.20.1-loader.0.16.7-launcher.1.0.1.jar nogui

@pause