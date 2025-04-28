summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_dye"},Tags:["lj.bundle_forge.T.broken_item_tmp"]}
item replace entity @n[tag=lj.bundle_forge.T.broken_item_tmp] contents from entity @s armor.feet
execute as @n[tag=lj.bundle_forge.T.broken_item_tmp] run function lj.bundle_forge:pop_runes
kill @e[tag=lj.bundle_forge.T.broken_item_tmp]