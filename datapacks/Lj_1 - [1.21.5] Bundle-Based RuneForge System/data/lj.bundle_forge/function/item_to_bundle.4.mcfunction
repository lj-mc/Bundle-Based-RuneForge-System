execute unless data entity @s data."lj.bundle_forge:persist_fields".list.[-1] run return 0
data modify entity @s data."lj.bundle_forge:persist_fields".path set from entity @s data."lj.bundle_forge:persist_fields".list.[-1]
data remove entity @s data."lj.bundle_forge:persist_fields".list.[-1]
function lj.bundle_forge:item_to_bundle.5 with entity @s data."lj.bundle_forge:persist_fields"
function lj.bundle_forge:item_to_bundle.4