execute unless data entity @s equipment.head.components."minecraft:bundle_contents".[-1] run return 0
function lj.bundle_forge:validity_check
execute if score $lj.bundle_forge:rune_valid lj.INT matches 1 run function lj.bundle_forge:bundle_update.3
execute if score $lj.bundle_forge:rune_valid lj.INT matches 0 run function lj.bundle_forge:bundle_update.4
data remove entity @s equipment.head.components."minecraft:bundle_contents".[-1]
function lj.bundle_forge:bundle_update.2