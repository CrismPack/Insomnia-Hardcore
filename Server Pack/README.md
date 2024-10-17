# **Insomnia: Hardcore - Server Pack**

## Requirements:

- Minimum 5 GB of allocated RAM.
- Java 17 or above.

---

## Performance Recommendations:

- For the best performance, it is recommended to use GraalVM 17 or above as your JDK. Get it here: https://www.graalvm.org/downloads/
- Use the starter script most suited for your server configuration.
- If you are using a hosting provider, you should use the recommended JVM arguments below.
- Pre-generate the terrain before playing. See below for commands. (Generating terrain is one of the most expensive tasks in modded Minecraft, pre-generating it eliminates this source of lag)
  1. `/chunky world [world]`
  2. `/chunky radius <radius>`
  3. `/chunky start`

---

## Recommended JVM Arguments:

Based on [Mukul1127/Minecraft-Performance-Flags-Benchmarks](https://github.com/Mukul1127/Minecraft-Performance-Flags-Benchmarks)

#### Regular

```
-XX:+UnlockExperimentalVMOptions -XX:+UnlockDiagnosticVMOptions -XX:+AlwaysActAsServerClassMachine -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:NmethodSweepActivity=1 -XX:ReservedCodeCacheSize=400M -XX:NonNMethodCodeHeapSize=12M -XX:ProfiledCodeHeapSize=194M -XX:NonProfiledCodeHeapSize=194M -XX:-DontCompileHugeMethods -XX:MaxNodeLimit=240000 -XX:NodeLimitFudgeFactor=8000 -XX:+UseVectorCmov -XX:+PerfDisableSharedMem -XX:+UseFastUnorderedTimeStamps -XX:+UseCriticalJavaThreadPriority -XX:ThreadPriorityPolicy=1 -XX:+UseZGC -XX:AllocatePrefetchStyle=1 -XX:-ZProactive
```

#### GraalVM

```
-XX:+UnlockExperimentalVMOptions -XX:+UnlockDiagnosticVMOptions -XX:+AlwaysActAsServerClassMachine -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:NmethodSweepActivity=1 -XX:ReservedCodeCacheSize=400M -XX:NonNMethodCodeHeapSize=12M -XX:ProfiledCodeHeapSize=194M -XX:NonProfiledCodeHeapSize=194M -XX:-DontCompileHugeMethods -XX:+PerfDisableSharedMem -XX:+UseFastUnorderedTimeStamps -XX:+UseCriticalJavaThreadPriority -XX:+EagerJVMCI -Dgraal.TuneInlinerExploration=1 -XX:+UseZGC -XX:AllocatePrefetchStyle=1 -XX:-ZProactive
```

---

## Gameplay Stuff:

Hardcore is enabled by default. If that isn't your thing you can simply go ahead and disable it.
To disable Hardcore open the 'server.properties' file and change "hardcore=true" to "hardcore=false".

Visit the wiki to learn more: https://wiki.crismpack.net/modpacks/insomnia-hardcore/getting-started-guide
