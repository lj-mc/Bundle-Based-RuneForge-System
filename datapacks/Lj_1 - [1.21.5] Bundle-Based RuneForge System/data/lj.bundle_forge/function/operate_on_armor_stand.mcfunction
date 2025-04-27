summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,Marker:true,NoGravity:true,Small:true,Tags:["lj.bundle_forge.T_armor_stand_op"]}
$item replace entity @n[tag=lj.bundle_forge.T_armor_stand_op] armor.head from entity @s $(slot)
tag @a remove lj.bundle_forge.T_operating_player
tag @s add lj.bundle_forge.T_operating_player
$execute as @n[tag=lj.bundle_forge.T_armor_stand_op] run function $(func)
$item replace entity @s $(slot) from entity @n[tag=lj.bundle_forge.T_armor_stand_op] armor.head
kill @e[tag=lj.bundle_forge.T_armor_stand_op]