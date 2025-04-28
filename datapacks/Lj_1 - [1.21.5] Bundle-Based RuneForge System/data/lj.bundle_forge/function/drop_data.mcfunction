summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_dye"},Tags:["lj.bundle_forge.T.drop_item_tmp"]}
$data modify entity @n[tag=lj.bundle_forge.T.drop_item_tmp] Item set from $(path)
tag @e remove lj.bundle_forge.T.drop_item_tmp