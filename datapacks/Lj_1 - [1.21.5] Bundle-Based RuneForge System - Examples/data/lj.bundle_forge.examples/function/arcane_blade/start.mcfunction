function lj.bundle_forge.examples:arcane_blade/roll_hit
title @s subtitle {translate:"\ud83d\udde1 Doom Stance \ud83d\udde1",color:"white",bold:true,italic:true}
title @s title ""
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1
scoreboard players set @s lj.bundle_forge.examples.V.arcane_phase 1
scoreboard players set @s lj.bundle_forge.examples.V.arcane_cd -620