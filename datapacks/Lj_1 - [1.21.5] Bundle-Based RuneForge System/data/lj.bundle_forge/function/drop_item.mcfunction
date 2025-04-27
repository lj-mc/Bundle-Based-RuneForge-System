summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick"},Tags:["lj.bundle_forge.item_temp"]}
$item replace entity @n[tag=lj.bundle_forge.item_temp] contents from $(path)
tag @e remove lj.bundle_forge.item_temp