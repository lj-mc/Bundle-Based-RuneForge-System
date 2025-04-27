scoreboard players set $lj.bundle_forge:rune_valid lj.INT 0
function lj.bundle_forge:validity_check.1 with entity @s equipment.head.components."minecraft:bundle_contents".[-1].components."minecraft:custom_data"."lj.bundle_forge:rune"
data modify entity @s data."lj.bundle_forge:validity_check".list set from entity @s equipment.head.components."minecraft:bundle_contents".[-1].components."minecraft:custom_data"."lj.bundle_forge:rune".supported_items
function lj.bundle_forge:validity_check.2
execute if score $lj.bundle_forge:rune_valid lj.INT matches 0 run function lj.bundle_forge:error_msg {second_item:"equipment.mainhand",msg:"[RuneForge] [%1$s] cannot be applied to [%2$s]"}
execute if score $lj.bundle_forge:rune_valid lj.INT matches 0 run return 0
data modify entity @s data."lj.bundle_forge:validity_check".applied set value []
data modify entity @s data."lj.bundle_forge:validity_check".applied set from entity @s equipment.mainhand.components."minecraft:custom_data"."lj.bundle_forge:item"."exclusive_classes"
data modify entity @s data."lj.bundle_forge:validity_check".new_list set from entity @s equipment.head.components."minecraft:bundle_contents".[-1].components."minecraft:custom_data"."lj.bundle_forge:rune"."exclusive_classes"
function lj.bundle_forge:validity_check.3
execute if score $lj.bundle_forge:rune_valid lj.INT matches 0 run function lj.bundle_forge:error_msg {second_item:"equipment.mainhand",msg:"[RuneForge] [%2$s] cannot accept [%1$s] - %3$s"}
execute if score $lj.bundle_forge:rune_valid lj.INT matches 0 run return 0
data modify entity @s data."lj.bundle_forge:validity_check".applied_list set from entity @s equipment.mainhand.components."minecraft:custom_data"."lj.bundle_forge:tech"."runes"
function lj.bundle_forge:validity_check.5