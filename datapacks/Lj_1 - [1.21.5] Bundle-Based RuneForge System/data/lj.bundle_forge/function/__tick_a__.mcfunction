advancement revoke @s from lj.bundle_forge:root
execute if items entity @s player.crafting.0 #lj.bundle_forge:forgeable run function lj.bundle_forge:item_to_bundle {slot:'player.crafting.0'}
execute if items entity @s player.crafting.1 #lj.bundle_forge:forgeable run function lj.bundle_forge:item_to_bundle {slot:'player.crafting.1'}
execute if items entity @s player.crafting.2 #lj.bundle_forge:forgeable run function lj.bundle_forge:item_to_bundle {slot:'player.crafting.2'}
execute if items entity @s player.crafting.3 #lj.bundle_forge:forgeable run function lj.bundle_forge:item_to_bundle {slot:'player.crafting.3'}
execute if items entity @s player.cursor #minecraft:bundles[minecraft:custom_data~{"lj.bundle_forge:item":{}}] run function lj.bundle_forge:bundle_to_item {slot:'player.cursor'}
execute if items entity @s player.cursor #minecraft:bundles[minecraft:bundle_contents~{items:{contains:[{items:"#minecraft:bundles","predicates":{"minecraft:custom_data":{"lj.bundle_forge:item":{}}}}]}}] run function lj.bundle_forge:bundle_cheat
execute if items entity @s player.crafting.0 #minecraft:bundles[minecraft:custom_data~{"lj.bundle_forge:item":{}}] run function lj.bundle_forge:bundle_modify_check {slot:'player.crafting.0'}
execute if items entity @s player.crafting.1 #minecraft:bundles[minecraft:custom_data~{"lj.bundle_forge:item":{}}] run function lj.bundle_forge:bundle_modify_check {slot:'player.crafting.1'}
execute if items entity @s player.crafting.2 #minecraft:bundles[minecraft:custom_data~{"lj.bundle_forge:item":{}}] run function lj.bundle_forge:bundle_modify_check {slot:'player.crafting.2'}
execute if items entity @s player.crafting.3 #minecraft:bundles[minecraft:custom_data~{"lj.bundle_forge:item":{}}] run function lj.bundle_forge:bundle_modify_check {slot:'player.crafting.3'}
execute if items entity @s weapon.mainhand #lj.bundle_forge:forgeable run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_data",tag:{"lj.bundle_forge:tech":{slot:"mainhand"}}}
execute if items entity @s weapon.offhand #lj.bundle_forge:forgeable run item modify entity @s weapon.offhand {function:"minecraft:set_custom_data",tag:{"lj.bundle_forge:tech":{slot:"offhand"}}}
execute if items entity @s armor.feet #lj.bundle_forge:forgeable run item modify entity @s armor.feet {function:"minecraft:set_custom_data",tag:{"lj.bundle_forge:tech":{slot:"feet"}}}
execute if items entity @s armor.legs #lj.bundle_forge:forgeable run item modify entity @s armor.legs {function:"minecraft:set_custom_data",tag:{"lj.bundle_forge:tech":{slot:"legs"}}}
execute if items entity @s armor.chest #lj.bundle_forge:forgeable run item modify entity @s armor.chest {function:"minecraft:set_custom_data",tag:{"lj.bundle_forge:tech":{slot:"chest"}}}
execute if items entity @s armor.head #lj.bundle_forge:forgeable run item modify entity @s armor.head {function:"minecraft:set_custom_data",tag:{"lj.bundle_forge:tech":{slot:"head"}}}
