execute unless data entity @s data."lj.bundle_forge:validity_check".list.[-1] run return 0
data modify entity @s data."lj.bundle_forge:validity_check".supported_items set from entity @s data."lj.bundle_forge:validity_check".list.[-1]
function lj.bundle_forge:validity_check.1 with entity @s data."lj.bundle_forge:validity_check"
data remove entity @s data."lj.bundle_forge:validity_check".list.[-1]
function lj.bundle_forge:validity_check.2