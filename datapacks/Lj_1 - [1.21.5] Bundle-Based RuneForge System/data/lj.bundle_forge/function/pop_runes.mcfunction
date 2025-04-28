execute unless data entity @s Item.components."minecraft:custom_data"."lj.bundle_forge:tech".runes.[0] run return 0
summon minecraft:item ~ ~ ~ {Invulnerable:true,Glowing:true,NoGravity:true,Item:{id:"minecraft:white_dye"},Tags:["lj.bundle_forge.T.broken_item_rune_tmp"]}
data modify entity @n[tag=lj.bundle_forge.T.broken_item_rune_tmp] Item set from entity @s Item.components."minecraft:custom_data"."lj.bundle_forge:tech".runes.[0]
tag @e remove lj.bundle_forge.T.broken_item_rune_tmp
data remove entity @s Item.components."minecraft:custom_data"."lj.bundle_forge:tech".runes.[0]
function lj.bundle_forge:pop_runes