kill @e[tag=lj.bundle_forge.examples.T.decapitate_target]
execute as @n[tag=lj.bundle_forge.examples.T.decapitate_victim] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~-1 ~ {Tags:["lj.bundle_forge.examples.T.decapitate_target"],CustomName:{"translate":"Arcane Blade",bold:true,color:"gold"}}
execute unless entity @n[tag=lj.bundle_forge.examples.T.decapitate_target,distance=0.5..] run function lj.bundle_forge.examples:arcane_blade/decapitate_tick.1
tp @s ~ ~ ~ facing entity @n[tag=lj.bundle_forge.examples.T.decapitate_target]
tp @s ^ ^ ^0.5