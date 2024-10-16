:: Check if the jar file exists before downloading
if not exist "fabric-server-mc.1.20.1-loader.0.16.7-launcher.1.0.1.jar" (
    echo Server jar not found, downloading...
    curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.20.1/0.16.7/1.0.1/server/jar
) else (
    echo Server jar already exists, skipping download.
)