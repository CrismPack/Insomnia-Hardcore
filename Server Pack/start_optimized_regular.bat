@echo off

:: Download Fabric server
call fabric_server_downloader.bat

:: Run the jar with the specified Java options
java -Xmx6G -jar ^ 
-XX:+UnlockExperimentalVMOptions -XX:+UnlockDiagnosticVMOptions -XX:+AlwaysActAsServerClassMachine -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:NmethodSweepActivity=1 -XX:ReservedCodeCacheSize=400M -XX:NonNMethodCodeHeapSize=12M -XX:ProfiledCodeHeapSize=194M -XX:NonProfiledCodeHeapSize=194M -XX:-DontCompileHugeMethods -XX:MaxNodeLimit=240000 -XX:NodeLimitFudgeFactor=8000 -XX:+UseVectorCmov -XX:+PerfDisableSharedMem -XX:+UseFastUnorderedTimeStamps -XX:+UseCriticalJavaThreadPriority -XX:ThreadPriorityPolicy=1 ^
-XX:+UseZGC -XX:AllocatePrefetchStyle=1 -XX:-ZProactive ^
fabric-server-mc.1.20.1-loader.0.16.7-launcher.1.0.1.jar nogui

@pause