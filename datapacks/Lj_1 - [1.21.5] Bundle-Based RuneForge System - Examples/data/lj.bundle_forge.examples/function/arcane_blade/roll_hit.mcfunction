tag @s remove lj.bundle_forge.examples.T.arcane_spin
scoreboard players add @s lj.bundle_forge.examples.V.arcane_phase 1
execute if predicate {condition:"minecraft:random_chance",chance:0.5} run tag @s add lj.bundle_forge.examples.T.arcane_spin
scoreboard players set @s lj.bundle_forge.examples.V.spin_left 0
scoreboard players set @s lj.bundle_forge.examples.V.spin_right 0
scoreboard players set @s lj.bundle_forge.examples.V.spin_time 0