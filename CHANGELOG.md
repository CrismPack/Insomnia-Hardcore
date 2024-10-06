




##### InsomniaHardcore

# Changelog - 1.20.1

## v2.2.0 `Work in progress`

*Fabric Loader 0.16.5* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.2.0.md)*

### Changes/Improvements ⭐

- New dungeon & boss in the Overworld.
- Return of the Aether dimension.
- New Icarae Origin and craftable wings.
- Armor trim materials now give additional attributes when worn.
- Changed shader to use the Reimagined style by default.
- Changed shader to use the medium preset by default.
- Changed starter kit to give lanterns instead of torches.
- Changed starter kit to give Eccentric Tome containing starter guidebooks.
- Minor quality of life changes & performance gains.
- Updated mods & resource packs.

### Bug Fixes 🪲

- Fixed issue with mobs becoming invincible when hit with certain spells. [[Issue]](https://github.com/Sweenus/SimplySkills/issues/105)
- Fixed shader pack unable to be activated with keybind from fresh install.
- Fixed mobs glowing when holding a light source with shaders on.

### Added Mods ✅

- Advanced Enderite
- Better Trims
- Cobweb
- Common Network
- Configurable
- Create Enchantment Industry Fabric
- Death Knights
- Distant Friends
- Dungeon Now Loading 1%
- Eccentric Tome
- Elytra Physics `Client`
- Entity Culling Fabric/Forge `Client`
- Hephaestus Fabric
- Icarae Origin
- Icarus
- iChunUtil `Client`
- Paradise Lost
- Phantom Config
- Resourceful Config
- Sawmill
- Sound Physics Remastered
- Starlight
- SuperMartijn642's Config Lib
- True Darkness Refabricated `Client`
- Zombie Awareness

### Removed Mods ❌

- Concurrent Chunk Management Engine
- Phantom Config Fork
- True Darkness Fork  `Client`

### Config Changes 📝

- Changed Nvidium's dependency of Sodium to allow any version: `Fabric Loader`, `Client`
- Added lang override for 'Visual Traveler's Titles', changing "travelerstitles.the_aether.the_aether" to "travelerstitles.paradise_lost.paradise_lost": `Insomnia Custom Lang`, `Client`
- Added override for Create's breakage with 'Sound Physics Remastered': `Fabric Loader`, `Both`
- Changed shaderPack value to "Complementary r5.2.1 \[Insomnia Edit\]" by default: `Iris`, `Client`
- Changed "requireMod" to "true": `True Darkness Refabricated`, `Server`
- Deleted "mixin.experimental.chunk_tickets=false" line (effectively enabling it): `Lithium`, `Client`
- Changed "mixin.experimental" to "true": `Server`, `Server`
- Removed "minecells:minecells_guidebook" item from starterkit: `StarterKit`, `Client`
- Changed boss health and damage scale from "1.0" to "2.0": `Dungeon Now Loading 1%`, `Both`
- Changed dungeon mob health and attack scale from "1.0" to "1.5": `Dungeon Now Loading 1%`, `Both`
- Changed disableRecipebook to "true": `Recipe Essentials`, `Both`
- Moved shaderpack settings to be handled by YOSBR: `Complementary Insomnia Edit`, `Client`
- Replaced torch item with lanterns: `StarterKit`, `Both`
- Added "Eccentric Tome" item, containing TConstruct and SimplySwords guidebooks inside of it: `StarterKit`, `Both`
- Changed "addExistingItemsAfterKitSet" to false: `StarterKit`, `Both`

## v2.1.7

*Fabric Loader 0.15.11* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.1.7.md)*

### Update overview

- Added 'Rogues & Warriors' mod.
- Updated the 'RPG Series' suite of mods, fixing deserialization crash on servers. [[Issue]](https://github.com/ZsoltMolnarrr/SpellEngine/issues/62)
- Implemented a script that schedules respawn waves on servers. (Monday, Wednesday, Friday, Saturday & Sunday by default)
- Changed how armor functions to improve the balance of modded armor.
- Players now drop their head when killed.
- Fixed Creeper animations and textures not loading correctly.
- Fixed permadeath text showing up while respawning normally.
- Changed keepInventory functionality to make players drop their inventory when all lives are depleted.
- Players now gets a starter kit when respawning from a respawn wave.
- Refreshed design of server spawn structure. Now includes the rtp portal and buyable respawn mechanic as seen on the official server.

### Added Mods ✅

- Armor & damage scaling
- Individual Keep Inventory `Server`
- Iris & Oculus Flywheel Compat `Client`
- Just Player Heads
- KubeJS
- Pufferfish's Attributes
- Rhino
- Rogues & Warriors

### Removed Mods ❌

- AntiXray  `Server`
- RandomTP `Server`

### Config Changes 📝

- Changed update_checker to "false": `Mod Menu`, `Client`
- Moved 'Fresh Animations Extensions' above the FA compat packs: `Resource Pack Overrides`, `Client`
- Set days array for respawn_schedule script to "\[1, 3, 5, 6, 7]": `KubeJS`, `Server`
- Set targetHour for respawn_schedule script to "15": `KubeJS`, `Server`
- Set targetMinute for respawn_schedule script to "0": `KubeJS`, `Server`
- Removed "Warning" text from death screen: `FancyMenu`, `Client`
- Changed enable-command-block to "true" by default: `Default Server Properties`, `Server`

## v2.1.6

*Fabric Loader 0.15.11* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.1.6.md)*

### Update overview

- Moonphases now impact the light levels in the Overworld.
- Changed to use a single shader pack that includes both the Unbound and Reimagined visual styles.
- Improved framerate stability in singleplayer.
- Reverted 'RPG Series' mods to versions prior to "Saving NBT Data" server crashing issue started occuring.

### Added Mods ✅

- Mobtimizations - Entity Performance Fixes
- Persistent Inventory Search `Client`
- Ranged Weapon API
- Structure Essentials
- ThreadTweak
- Villagers Respawn

### Removed Mods ❌

- All The Trims
- BadOptimizations
- Delightful Creators
- Faster Random
- Pufferfish's Attributes
- StutterFix `Client`
- TieFix `Client`
- Unsafe World Random Access Detector

### Config Changes 📝

- Changed shader pack menu to allow for editing settings: `FancyMenu`, `Client`
- Added disclaimer message to shader pack menu: `FancyMenu`, `Client`
- Changed doWriteToResourceTextFile to "true": `Branded Logs`, `Client`
- Changed only_affect_block_light to "false": `True Darknes Fork`, `Client`
- Changed game priority to "8": `ThreadTweak`, `Both`
- Added message to dh-menu to help with fixing fog issue: `FancyMenu`, `Client`
- Changed gcFreeChunkSerializer to false: `C2ME`, `Both`
- Changed threadedWorldGen enabled to "true": `C2ME`, `Both`
- Changed clientSideConfig.modifyMaxVDConfig enabled to "false": `C2ME`, `Both`
- Changed useSmallThreadingDetector to "true": `FerriteCore`, `Both`
- Changed mixin.experimental to "true": `Lithium`, `Both`
- Changed mixin.experimental.chunk_tickets to "false": `Lithium`, `Both`
- Changed bugfix chunk_deadlock, packet_leak, paper_chunk_patches to "true": `ModernFix`, `Both`
- Changed perf clear_fabric_mapping_tables, clear_mixin_classinfo, dynamic_entity_renderers, faster_item_rendering, nbt_memory_usage, dynamic_sounds, dynamic_resources & deduplicate_location to "true": `ModernFix`, `Both`
- Changed thread_priorities to "false": `ModernFix`, `Both`
- Changed exp_use_optimized_chunk_ticking_iteration to "true": `Very Many Players`, `Both`
- Changed checkForNewUpdates to "false": `Friend&Foes`, `Both`

## v2.1.5

*Fabric Loader 0.15.11* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.1.5.md)*

### Update overview

- Fixed modded dungeon and boss structures not being allowed to respawn.
- Fixed "Saving entity NBT" crashing issue. Thank you Crash Master Razor for helping narrowing down the cause!
- Added RPG style damage indicators.
- Removed unused library mods.

### Added Mods ✅

- Log Cleaner
- Mmm Indicators `Client`

### Removed Mods ❌

- Crafting Manipulator
- DoesPotatoTick?
- Faux Custom Entity Data
- LiLaC `Client`
- Memory Leak Fix
- Server Performance - Smooth Chunk Save
- SuperMartijn642's Config Lib `Client`
- TipTheScales `Client`

### Config Changes 📝

- Added structure IDs for BOMD boss structures: `Respawning Structures`, `Both`
- Added structure ID "riendsandfoes:citadel": `Respawning Structures`, `Both`
- Added entries for modded chest loot tables to allow for detecting and respawning modded dungeons: `Respawning Structures`, `Both`
- Blacklisted "integrated_stronghold:stronghold": `Respawning Structures`, `Both`
- Changed screenTypingVisible to "false": `What are they up to?`, `Client`

## v2.1.4a

*Fabric Loader 0.15.11* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.1.4a.md)*

### Update overview

- Client hotfix, fixing hearts turning black when having armor equipped. [https://github.com/RaphiMC/ImmediatelyFast/issues/208]

## v2.1.4

*Fabric Loader 0.15.11* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.1.4.md)*

### Update overview

- Added some neat animation related resource packs and mods.
- Changed potions to be stackable up to 16.
- Updated mods to their latest version.
- Fixed hearts turning black when having armor equipped. [https://github.com/RaphiMC/ImmediatelyFast/issues/208]
- Fixed crashing issue when using the anvil upgrade in backpacks.
- May or may not fix server crashing related to spell projectiles.

### Added Mods ✅

- Pufferfish's Attributes
- StackablePotions
- Styled Player List `Server`
- What Are They Up To

### Removed Mods ❌

- AntiGhost `Client`
- Redirector

### Config Changes 📝

- Changed preventFirstPersonHandAnimating to "true": `Entity Model Features`, `Client`
- Changed skinTransparencyMode to "ALL": `Entity Texture Features`, `Client`
- Moved arrow to the bottom right corner: `Combat Roll`, `Client`
- Deleted ping placeholder: `Styled Player List`, `Server`
- Fixed alignment of "Insomnia: Hardcore" text: `Styled Player List`, `Server`
- Force enabled 'Fresh Moves' & 'FreshCompats': `Resource Pack Overrides`, `Client`

## v2.1.3

*Fabric Loader 0.15.11* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.1.3.md)*

### Update overview

- Added 'Sophisticated Backpacks', 'Small Ships' & 'Every Compat'.
- Greatly nerfed the effectiveness of some overpowered mob farms.
- Upped the general difficulty of the Otherside dimension, Deep Dark biome, Frozen Ocean biomes, Aquamirae structures, Strongholds & Ancient Cities.
- Greatly increased the difficulty of Wither Boss, Mother of the Maze & Captain Cornelia in the Overworld.
- Fixed conflicting keybinds with the "R" key.
- Fixed shields not working properly. [https://github.com/nvb-uy/Shield_Overhaul/issues/24]
- Fixed crashing issue when entering the Promenade dimension. [https://github.com/Steveplays28/noisium/issues/22]
- Switched to use the newer 'Farmer's Delight Refabricated'.
- Switched to use the regular version of 'Xaero's Minimap' to enable cave maps.
- Changes to the selection of optimization mods, hopefully improving compatibility & server performance.
- Updated mods to their latest versions.

### Added Mods ✅

- Concurrent Chunk Management Engine
- Connectivity
- Cubes Without Borders `Client`
- DoesPotatoTick?
- Embeddium `Client`
- Every Compat
- Farmer's Delight Refabricated
- Fzzy Config
- Modern KeyBinding
- No Mob Farms
- Paginated Advancements & Custom Frames
- Small Ships
- Sophisticated Backpacks
- Sophisticated Core
- Very Many Players `Server`
- Xaero's Minimap

### Removed Mods ❌

- Advancements Enlarger `Client`
- Borderless Mining `Client`
- Better Recipe Books  `Client`
- Chunk Sending
- Entity Culling Fabric/Forge `Client`
- Farmer's Delight
- Indium `Client`
- Limited Chunkloading - Chunk cleanup `Server`
- Mobs Attempt Parkour
- Mobtimizations - Entity Performance Fixes
- Recipe Book Delight
- Reese's Sodium Options `Client`
- Shield Overhaul
- Sodium `Client`
- TimeOutOut
- Xaero's Minimap

### Config Changes 📝

- Disabled parrying: `Shield Overhaul`, `Both`
- Unbound conflicting "R" keybind from 'BRB' & 'Azurelib': `YOSBR`, `Client`
- Added config entry for "deep_dark" biome and set its difficulty to 4: `Dungeon Difficulty`, `Both`
- Added config entry for "overside" dimension and set its difficulty to 4: `Dungeon Difficulty`, `Both`
- Fixed the faulty config entry for the "ancient_city" structure and set its difficulty to 4: `Dungeon Difficulty`, `Both`
- Upped the difficulty of the "integrated_stronghold:stronghold" structure from 4 to 6: `Dungeon Difficulty`, `Both`
- Added config entries for "aquamirae:captain_cornelia", "aquamirae:maze_mother" & "wither" to independently change their difficulty in the Overworld: `Dungeon Difficulty`, `Both`
- Disabled "Dynamo" enchantment: `MC Dungeons Weapons`, `Both`
- Moved arrow to the bottom left corner of the screen: `Combat Roll`, `Client`
- Disabled "allowRadarOnServer": `Xaero's Minimap`, `Both`

## v2.1.2

*Fabric Loader 0.15.7* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.1.2.md)*

### Update overview

- Reverted 'OPAC' and 'OPAC Create Support' update to fix issues with pipes from 'Create'. [https://github.com/thexaero/open-parties-and-claims/issues/446]
- Made the difficulty scaling of dungeons and bosses even more aggressive.
- Changed recipes for Metal Bundles to be more expensive.

### Config Changes 📝

- Replaced all recipes for Metal Bundles to use blocks: `Insomnia - Config`, `Both`
- Added entry for "betternether:nether_city": `Dungeon Difficulty`, `Both`
- Added attributes for health and armor for the dungeon difficulty type: `Dungeon Difficulty`, `Both`
- Armor addition set to "1.0" for the dungeon difficulty type: `Dungeon Difficulty`, `Both`
- Health multiplier set to "0.1" for the dungeon difficulty type: `Dungeon Difficulty`, `Both`
- Increased the experience multiplier from "0.0" to "0.3" for the dungeon difficulty type: `Dungeon Difficulty`, `Both`
- Increased the damage multiplier from "0.1" to "1.0" for the dungeon difficulty type: `Dungeon Difficulty`, `Both`
- Increased the damage multiplier from "0.25" to "2.0" for the boss difficulty type: `Dungeon Difficulty`, `Both`
- Increased the armor multiplier from "0.25" to "1.0" for the boss difficulty type: `Dungeon Difficulty`, `Both`
- Increased the health multiplier from "0.5" to "1.0" for the boss difficulty type: `Dungeon Difficulty`, `Both`

## v2.1.1

*Fabric Loader 0.15.7* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.1.1.md)*

### Update overview

- Fixed crashing issue related to 'Create Fabric'. [https://github.com/Fabricators-of-Create/Create/issues/1428]
- Fixed some keybind conflicts.
- Fixed 'Freshly Modded' not being enabled.
- Disabled some overpowered enchantments.

### Added Mods ✅

- Icterine

### Removed Mods ❌

- Iris & Oculus Flywheel Compat `Client`
- Sound Physics Remastered

### Config Changes 📝

- Unbound keybinds per default for "cycleLeft" & "cycleRight" from 'PuzzleApi': `YOSBR`, `Client`
- Disabled "Chilling" enchantment: `MC Dungeons Armor`, `Both`
- Disabled "ENIGMA_RESONATOR" enchantment: `MC Dungeons Weapons`, `Both`
- Made 'Freshly Modded' actually be force-enabled: `Resource Pack Overrides`, `Client`
- Changed "dayDelayConfig" to 10: `From the Fog - Config`, `Both`

## v2.1.0

*Fabric Loader 0.15.7* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.1.0.md)*

### Update overview

- Revamped Nether terrain generation.
- Added additional content to Nether and End dimensions.
- Fixed mob health and damage being too high.
- Fixed beds in Minecells dimensions being able to set respawn point.
- Fixed phantoms spawning in the Overworld on servers.
- Reworked the difficulty system to have a more sharp increase as you progress through dimensions and bosses.
- Configured difficulty of many modded dungeons.
- Fixed some crashing issues.
- Replaced REI suite with EMI for improved compatibility.
- Added more options for inventory expansion.
- Re-added a few quality of life mods.
- And probably more that i have forgotten to write down. ¯\_(ツ)_/¯

### Added Mods ✅

- Amplified Nether
- Async Locator
- AzureLib
- BetterNether
- ClickThrough `Client`
- Eldritch End
- EMI Loot
- EMI Ores
- EMI Trades
- EMI
- EMI Extra Integrations
- Faster Random
- Friends&Foes
- Hearths
- ItemFlexer `Server`
- Just Enough Items
- Metal Bundles
- MNS - Moog's Nether Structures
- More Armor Trims
- No Chat Reports
- Paragliders
- Savage Ender Dragon
- StackDeobfuscator
- Suggestion Tweaker

### Removed Mods ❌

- Concurrent Chunk Management Engine
- CIT Resewn
- Dark Enchanting
- Elytra Physics `Client`
- fabric-permissions-api
- Heartbond
- Incendium
- Login Protection `Server`
- Roughly Enough Items Fabric/Forge
- Roughly Enough Professions
- Roughly Enough Resources
- Structure Essentials

### Config Changes 📝

- Disabled "perPlayerDifficulty": `Dungeon Difficulty`, `Both`
- Renamed config file to "phantomconfigfork.json5" so it actually can be read by the mod: `PhantomConfigFork`, `Server`
- Enabled "sleepCheckOverworldOnly": `Insomnia Config`, `Both`
- Enabled "forceUpdates" for chatSettings: `Exordium`, `Client`
- Added config entries for 'Integrated Strongholds', 'Better Desert Temples', 'Better Jungle Temples', 'Better Ocean Monuments', 'Better Fortresses', 'Friends and Foes', 'Bosses of Mass Destruction', 'Minecells', 'Moogs Nether Structures', 'Philips Ruins' & 'Better Dungeons': `Dungeon Difficulty`, `Both`
- Changed difficulty of Minecells dimensions. Prison=4, Promenade=5, Ramparts=5, Insufferable_Crypt=3, Black_Bridge=3: `Dungeon Difficulty`, `Both`
- Changed difficulty of BOMD bosses. Lich=3, Void_Blossum=4, Gauntlet_Arena=6, Obsidilith_Arena=8: `Dungeon Difficulty`, `Both`
- Changed all structures to be "normal" difficulty type to prevent spawner spam: `Dungeon Difficulty`, `Both`
- Enabled scrolling for the MOTD message text box: `FancyMenu`, `Client`
- Disabled buttons on multiplayer menu: `No Chat Reports`, `Client`
- Disabled Void Strike and Void Shot enchantments: `MC Dungeons Weapons`, `Both`
- Unbound keybinding by default for favoring items: `EMI`, `Client`
- Changed minimap to be enabled by default: `Xaero's Minimap`, `Client`
- Enabled DDR: `Simply Skills`, `Both`
- Fixed Withered origin not being unselectable: `TooManyOrigins - Disable Withered`, `Server`
- Enabled "forceBetterXPreset": `BCLib`, `Both`
- Disabled "Blackstone Basin" nether biome: `Regions Unexplored`, `Both`
- Changed horizontal offset of buttons to "26" for the backpacked menu: `Inventory Profiles Next`, `Client`
- Enabled "show_icon_only_when_corrupted": `Eldritch End`, `Both`
- Added "metalbundles:leather_bundle" as a starter item: `StarterKit`, `Both`
- Disabled "allowLootablePlayer": `Revive`, `Server`
- Disabled "heartContainers": `Paragliders`, `Both`
- Disabled "enhanced_cauldron": `Amendments`, `Both`

## v2.0.0

*Fabric Loader 0.15.7* | *[Mod Updates](https://github.com/CrismPack/Insomnia-Hardcore/blob/1.20.1/Changelogs/changelog_mods_2.0.0.md)*

### Update overview

- First proper release version for 1.20.1!
- Players now spawn with a guidebook for 'Mine Cells' as well as a custom banner that can be equipped as a cape.
- New main menu panorama background & added an MOTD box on the main menu.
- Added 'From The Fog'. Herobrine will visit players at rare intervals but major haunting is disabled.
- Improved performance in areas with a lot of particles and chests.
- New dimensions, dungeons, structures & equipment.
- Created new datapack for servers that clears dropped items every 30 minutes.
- Fixed right-clicking beds not setting respawn point.
- Fixed new players not spawning in the starter structure.
- Updated all mods to their latest version.
- General cleanup and polish.
- And more...

### Config Changes 📝

- Changed default value for particles to 1 (decreased): `YOSBR`, `Client`
- Changed encounter to be "rare": `From The Fog`, `Both`
- Disabled major haunting: `From The Fog`, `Both`
- Disabled "Ocean Sand Pyramid" structure from spawning: `From The Fog`, `Both`
- Disabled "Stone Bee" structure from spawning: `Moog's Voyager Structures`, `Both`
- Changed "Official Server" button to link to insomnia.crismpack.net: `FancyMenu`, `Client`
- Changed built-in server to "insomnia.crismpack.net": `Builtin Servers`, `Client`
- Removed main menu background panorama (Allows the panorama to be controlled though resource packs instead): `FancyMenu`, `Client`
- Added background panorama override: `Insomnia Textures`, `Client`
- Changed disableSleep to "false": `Dusk`, `Both`
- Changed minSleepTime to "0": `Dusk`, `Both`
- Executes "gamerule keepInventory true" on load: `Insomnia Config`, `Both`
- Executes "gamerule allowSleeping false" on load: `Insomnia Config`, `Both`
- Fixed formatting of modded built-in textures: `Resource Pack Overrides`, `Client`
- Fixed new players not spawning inside the starter structure: `Insomnia Respawn`, `Server`
- Filter "Too many items! Cleared 1001 tasks." console spam: `Log Begone`, `Both`
- Commented out starter item lines to let it be handled by 'StarterKit': `Starter Items`, `Server`
- Set up starter items to be handled by this mod: `StarterKit`, `Server`
- Added MineCells guidebook & custom banner as starter items: `StarterKit`, `Both`