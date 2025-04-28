summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_dye"},Tags:["lj.bundle_forge.T.drop_item_tmp"]}
$item replace entity @n[tag=lj.bundle_forge.T.drop_item_tmp] contents from $(path)
tag @e remove lj.bundle_forge.T.drop_item_tmp