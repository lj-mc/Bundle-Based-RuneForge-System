scoreboard players operation @s lj.bundle_forge.examples.V.arcane_cd_s = @s lj.bundle_forge.examples.V.arcane_cd
scoreboard players operation @s lj.bundle_forge.examples.V.arcane_cd_s /= $lj.bundle_forge.examples:C_-20 lj.INT
execute unless score @s lj.bundle_forge.examples.V.arcane_cd_s matches 1.. run function lj.bundle_forge.examples:arcane_blade/tick.1
execute if score @s lj.bundle_forge.examples.V.arcane_phase matches 0 run title @s actionbar {translate:"[%1$ss] %2$s Right-Click to enter doom stance",color:"gold",with:[{score:{name:"@s",objective:"lj.bundle_forge.examples.V.arcane_cd_s"}},{translate:"\ud83d\udde1 Arcane Blade \ud83d\udde1",bold:true}]}
execute if score @s lj.bundle_forge.examples.V.arcane_phase matches 1 run function lj.bundle_forge.examples:arcane_blade/tick.2
execute if score @s lj.bundle_forge.examples.V.arcane_phase matches 2 run title @s actionbar {translate:"[%1$ss] %2$s Right-Click \u2192 Sweep",color:"gold",with:[{score:{name:"@s",objective:"lj.bundle_forge.examples.V.arcane_cd_s"}},{translate:"\ud83d\udde1 Arcane Blade \ud83d\udde1",bold:true}]}
execute if score @s lj.bundle_forge.examples.V.arcane_phase matches 3 run function lj.bundle_forge.examples:arcane_blade/tick.2
execute if score @s lj.bundle_forge.examples.V.arcane_phase matches 4 run title @s actionbar {translate:"[%1$ss] %2$s Right-Click \u2192 Decapitate",color:"gold",with:[{score:{name:"@s",objective:"lj.bundle_forge.examples.V.arcane_cd_s"}},{translate:"\ud83d\udde1 Arcane Blade \ud83d\udde1",bold:true}]}
execute if score @s lj.bundle_forge.examples.V.arcane_phase matches 5 run function lj.bundle_forge.examples:arcane_blade/tick.2
execute if score @s lj.bundle_forge.examples.V.arcane_phase matches 6 run title @s actionbar {translate:"[%1$ss] %2$s Right-Click \u2192 Doomsday Explosion",color:"gold",with:[{score:{name:"@s",objective:"lj.bundle_forge.examples.V.arcane_cd_s"}},{translate:"\ud83d\udde1 Arcane Blade \ud83d\udde1",bold:true}]}
execute if score @s lj.bundle_forge.examples.V.arcane_phase matches 7 run title @s actionbar {translate:"[%1$ss] %2$s Cooldown",color:"gray",with:[{score:{name:"@s",objective:"lj.bundle_forge.examples.V.arcane_cd_s"}},{translate:"\ud83d\udde1 Arcane Blade \ud83d\udde1",bold:true}]}
execute if score @s lj.bundle_forge.examples.V.arcane_phase matches 1..6 run function lj.bundle_forge.examples:arcane_blade/tick.3
execute if score @s lj.bundle_forge.examples.V.arcane_phase matches 4 run execute as @e[tag=lj.bundle_forge.examples.T.decapitate_victim] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:dust{color:[1,0,0],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 2
execute store result score $lj.bundle_forge.examples:tmp_0 lj.INT run data get entity @s Rotation[0] 1000
scoreboard players operation $lj.bundle_forge.examples:tmp_1 lj.INT = $lj.bundle_forge.examples:tmp_0 lj.INT
scoreboard players operation $lj.bundle_forge.examples:tmp_1 lj.INT -= @s lj.bundle_forge.examples.V.rot
scoreboard players operation @s lj.bundle_forge.examples.V.rot = $lj.bundle_forge.examples:tmp_0 lj.INT
execute if score $lj.bundle_forge.examples:tmp_1 lj.INT matches ..-180000 run scoreboard players add $lj.bundle_forge.examples:tmp_1 lj.INT 360000
execute if score $lj.bundle_forge.examples:tmp_1 lj.INT matches 180000.. run scoreboard players remove $lj.bundle_forge.examples:tmp_1 lj.INT 360000
execute if score $lj.bundle_forge.examples:tmp_1 lj.INT matches 1.. run function lj.bundle_forge.examples:arcane_blade/tick.4
execute if score $lj.bundle_forge.examples:tmp_1 lj.INT matches ..-1 run function lj.bundle_forge.examples:arcane_blade/tick.5
execute if score @s lj.bundle_forge.examples.V.spin_left matches 300000.. run scoreboard players set @s lj.bundle_forge.examples.V.spin_time -2
execute if score @s lj.bundle_forge.examples.V.spin_right matches 300000.. run scoreboard players set @s lj.bundle_forge.examples.V.spin_time -2
execute if score @s lj.bundle_forge.examples.V.right_click matches 1 run function lj.bundle_forge.examples:arcane_blade/right_click