execute unless items entity @s armor.head *[minecraft:custom_data~{"lj.bundle_forge:item":{base:{}}}] run function lj.bundle_forge:item_to_bundle.2
function lj.bundle_forge:item_to_bundle.3
item modify entity @s armor.head lj.bundle_forge:set_display_components
data modify entity @s equipment.head.components."minecraft:bundle_contents" set from entity @s equipment.head.components."minecraft:custom_data"."lj.bundle_forge:tech".runes
item modify entity @s armor.head {function:"set_item",item:"minecraft:bundle"}