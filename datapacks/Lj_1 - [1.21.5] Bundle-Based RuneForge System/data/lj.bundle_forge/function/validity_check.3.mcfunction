execute unless data entity @s data."lj.bundle_forge:validity_check".new_list.[-1] run return 0
data modify entity @s data."lj.bundle_forge:validity_check".new set from entity @s data."lj.bundle_forge:validity_check".new_list.[-1]
function lj.bundle_forge:validity_check.4 with entity @s data."lj.bundle_forge:validity_check"
data remove entity @s data."lj.bundle_forge:validity_check".new_list.[-1]
execute if score $lj.bundle_forge:rune_valid lj.INT matches 1 run function lj.bundle_forge:validity_check.3