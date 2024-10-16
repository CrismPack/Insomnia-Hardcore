@echo off

:: Load GraalVM path from graalvm_config.yml
for /f "tokens=1,2 delims==" %%a in (graalvm_config.yml) do (
    if "%%a"=="GRAALVM_PATH" set GRAALVM_PATH=%%b
)

:: Download Fabric server
call fabric_server_downloader.bat

:: Check if GRAALVM_PATH is set correctly
if not defined GRAALVM_PATH (
    echo GraalVM path not defined. Please check graalvm_config.yml.
    @pause
    exit /b
)
if not exist "%GRAALVM_PATH%\bin\java.exe" (
    echo GraalVM path invalid. Please check graalvm_config.yml.
    @pause
    exit /b
)

:: Run the jar with the specified Java options
"%GRAALVM_PATH%\bin\java.exe" -Xmx6G -jar ^
-XX:+UnlockExperimentalVMOptions -XX:+UnlockDiagnosticVMOptions -XX:+AlwaysActAsServerClassMachine -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:NmethodSweepActivity=1 -XX:ReservedCodeCacheSize=400M -XX:NonNMethodCodeHeapSize=12M -XX:ProfiledCodeHeapSize=194M -XX:NonProfiledCodeHeapSize=194M -XX:-DontCompileHugeMethods -XX:+PerfDisableSharedMem -XX:+UseFastUnorderedTimeStamps -XX:+UseCriticalJavaThreadPriority -XX:+EagerJVMCI -Dgraal.TuneInlinerExploration=1 ^
-XX:+UseZGC -XX:AllocatePrefetchStyle=1 -XX:-ZProactive ^
fabric-server-mc.1.20.1-loader.0.16.7-launcher.1.0.1.jar nogui

@pause