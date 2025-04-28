summon minecraft:item ~ ~ ~ {Invulnerable:true,PickupDelay:32767,Age:-32768,Tags:["lj.bundle_forge.T.msg_item_tmp"],Item:{id:"minecraft:white_dye"}}
data modify entity @n[tag=lj.bundle_forge.T.msg_item_tmp] Item set from entity @s equipment.head.components."minecraft:bundle_contents".[-1]
summon minecraft:text_display ~ ~ ~ {Tags:["lj.bundle_forge.T.text_tmp"],text:{selector:"@n[tag=lj.bundle_forge.T.msg_item_tmp]"}}
$data modify entity @s data."lj.bundle_forge:error_msg" set value {translate:"$(msg)",with:[{},{},""],color:"red"}
execute if data entity @s data."lj.bundle_forge:validity_check".err_reason run data modify entity @s data."lj.bundle_forge:error_msg".with.[2] set from entity @s data."lj.bundle_forge:validity_check".err_reason
data modify entity @s data."lj.bundle_forge:validity_check".err_reason set value ""
data modify entity @s data."lj.bundle_forge:error_msg".with.[0] set from entity @n[tag=lj.bundle_forge.T.text_tmp] text
$data modify entity @n[tag=lj.bundle_forge.T.msg_item_tmp] Item set from entity @s $(second_item)
data modify entity @n[tag=lj.bundle_forge.T.text_tmp] text set value {selector:"@n[tag=lj.bundle_forge.T.msg_item_tmp]"}
data modify entity @s data."lj.bundle_forge:error_msg".with.[1] set from entity @n[tag=lj.bundle_forge.T.text_tmp] text
data remove entity @s data."lj.bundle_forge:error_msg".with.[].hover_event
data remove entity @s data."lj.bundle_forge:error_msg".with.[].insertion
execute unless data entity @s data."lj.bundle_forge:error_msg".with.[0].color run data modify entity @s data."lj.bundle_forge:error_msg".with.[0].color set value "white"
execute unless data entity @s data."lj.bundle_forge:error_msg".with.[1].color run data modify entity @s data."lj.bundle_forge:error_msg".with.[1].color set value "white"
tellraw @s {entity:"@s",nbt:'data."lj.bundle_forge:error_msg"',"interpret":true}
tellraw @a[tag=lj.bundle_forge.T.operating_player] {entity:"@s",nbt:'data."lj.bundle_forge:error_msg"',"interpret":true}
kill @e[tag=lj.bundle_forge.T.msg_item_tmp]
kill @e[tag=lj.bundle_forge.T.text_tmp]