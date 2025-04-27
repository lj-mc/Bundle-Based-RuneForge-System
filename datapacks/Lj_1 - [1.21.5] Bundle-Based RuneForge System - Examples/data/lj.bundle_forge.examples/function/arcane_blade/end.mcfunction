title @s subtitle {translate:"\ud83d\udde1 End of Doom Stance \ud83d\udde1",color:"white",bold:true,italic:true}
title @s title ""
execute store result storage lj.bundle_forge.examples:tmp time int 1 run scoreboard players get @s lj.bundle_forge.examples.V.arcane_cd_s
function lj.bundle_forge.examples:arcane_blade/roll_hit
function lj.bundle_forge.examples:arcane_blade/end.1 with storage lj.bundle_forge.examples:tmp {}