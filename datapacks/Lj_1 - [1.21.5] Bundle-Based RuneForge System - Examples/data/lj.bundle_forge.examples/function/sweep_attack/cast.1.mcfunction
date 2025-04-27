playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 2
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1
execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[tag=!lj.bundle_forge.examples.T_sweep_attacker,dx=0,dy=0,dz=0] add lj.bundle_forge.examples.T_sweep_victim