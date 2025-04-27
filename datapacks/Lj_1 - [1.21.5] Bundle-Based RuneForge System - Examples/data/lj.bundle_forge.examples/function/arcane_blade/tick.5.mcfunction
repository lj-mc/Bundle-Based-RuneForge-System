scoreboard players operation @s lj.bundle_forge.examples.V.spin_right -= $lj.bundle_forge.examples:tmp_1 lj.INT
scoreboard players operation @s lj.bundle_forge.examples.V.spin_left += $lj.bundle_forge.examples:tmp_1 lj.INT
scoreboard players operation @s lj.bundle_forge.examples.V.spin_left += $lj.bundle_forge.examples:tmp_1 lj.INT
execute if score @s lj.bundle_forge.examples.V.spin_left matches ..-1 run scoreboard players set @s lj.bundle_forge.examples.V.spin_left 0
execute if score @s lj.bundle_forge.examples.V.spin_right matches 360000.. run scoreboard players set @s lj.bundle_forge.examples.V.spin_right 360000