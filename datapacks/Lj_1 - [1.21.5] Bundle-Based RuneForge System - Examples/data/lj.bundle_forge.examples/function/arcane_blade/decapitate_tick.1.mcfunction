particle minecraft:poof ~ ~1 ~ 0 0 0 0 3
playsound minecraft:item.trident.hit player @a ~ ~ ~ 2
execute as @n[tag=lj.bundle_forge.examples.T_decapitate_victim] at @s run function lj.bundle_forge.examples:arcane_blade/decapitate_tick.2
kill @s