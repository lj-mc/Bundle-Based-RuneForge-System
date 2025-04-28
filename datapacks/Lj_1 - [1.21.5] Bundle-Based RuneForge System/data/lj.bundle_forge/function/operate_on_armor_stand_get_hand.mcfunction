summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,Marker:true,NoGravity:true,Small:true,Tags:["lj.bundle_forge.T.armor_stand_op"]}
$item replace entity @n[tag=lj.bundle_forge.T.armor_stand_op] armor.head from entity @s $(slot)
$execute as @n[tag=lj.bundle_forge.T.armor_stand_op] run function $(func)
$item replace entity @s $(slot) from entity @n[tag=lj.bundle_forge.T.armor_stand_op] weapon.mainhand
kill @e[tag=lj.bundle_forge.T.armor_stand_op]