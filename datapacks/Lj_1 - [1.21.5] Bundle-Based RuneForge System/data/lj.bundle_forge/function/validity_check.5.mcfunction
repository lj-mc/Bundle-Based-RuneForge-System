execute unless data entity @s data."lj.bundle_forge:validity_check".applied_list.[0] run return 0
data modify entity @s data."lj.bundle_forge:validity_check".applied set from entity @s data."lj.bundle_forge:validity_check".applied_list.[0]."components"."minecraft:custom_data"."lj.bundle_forge:rune"."exclusive_classes"
data modify entity @s data."lj.bundle_forge:validity_check".new_list set from entity @s equipment.head.components."minecraft:bundle_contents".[-1].components."minecraft:custom_data"."lj.bundle_forge:rune"."exclusive_classes"
function lj.bundle_forge:validity_check.3
execute if score $lj.bundle_forge:rune_valid lj.INT matches 0 run function lj.bundle_forge:error_msg {second_item:'data."lj.bundle_forge:validity_check".applied_list.[0]',msg:"[RuneForge] [%1$s] and [%2$s] conflict and cannot be applied together"}
data remove entity @s data."lj.bundle_forge:validity_check".applied_list.[0]
execute if score $lj.bundle_forge:rune_valid lj.INT matches 1 run function lj.bundle_forge:validity_check.5