summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick"},Tags:["lj.bundle_forge.item_temp"]}
$data modify entity @n[tag=lj.bundle_forge.item_temp] Item set from $(path)
tag @e remove lj.bundle_forge.item_temp