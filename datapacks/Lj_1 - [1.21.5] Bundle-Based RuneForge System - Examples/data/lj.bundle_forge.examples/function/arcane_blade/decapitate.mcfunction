execute unless entity @n[tag=lj.bundle_forge.examples.T_decapitate_victim] run tag @n[type=!minecraft:player] add lj.bundle_forge.examples.T_decapitate_victim
summon minecraft:armor_stand ~ ~0.3 ~ {Invisible:true,Invulnerable:true,Marker:true,NoGravity:true,Pose:{RightArm:[0,0,-45]},Tags:["lj.bundle_forge.examples.T_decapitate_sword","lj.bundle_forge.examples.T_decapitate_sword_tmp"]}
data modify entity @n[tag=lj.bundle_forge.examples.T_decapitate_sword_tmp] equipment.mainhand set from entity @s SelectedItem
tag @e remove lj.bundle_forge.examples.T_decapitate_sword_tmp
playsound minecraft:item.trident.throw player @a ~ ~ ~ 2
function lj.bundle_forge.examples:arcane_blade/roll_hit