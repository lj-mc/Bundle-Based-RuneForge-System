advancement revoke @s only lj.bundle_forge:inventory_changed
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
