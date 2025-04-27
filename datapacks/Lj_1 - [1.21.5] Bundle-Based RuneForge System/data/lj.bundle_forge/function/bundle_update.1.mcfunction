data modify entity @s equipment.mainhand set from entity @s equipment.head.components."minecraft:custom_data"."lj.bundle_forge:item".base
data modify entity @s equipment.mainhand.components."minecraft:custom_data"."lj.bundle_forge:item" set from entity @s equipment.head.components."minecraft:custom_data"."lj.bundle_forge:item"
data modify entity @s equipment.mainhand.components."minecraft:custom_data"."lj.bundle_forge:tech" set from entity @s equipment.head.components."minecraft:custom_data"."lj.bundle_forge:tech"
data modify entity @s equipment.mainhand.components."minecraft:custom_data"."lj.bundle_forge:tech"."runes" set value []
scoreboard players operation $lj.bundle_forge:update_result lj.INT = $lj.bundle_forge:require_update lj.INT
function lj.bundle_forge:bundle_update.2
function lj.bundle_forge:bundle_update.7 with storage lj.bundle_forge:config {}
execute if score $lj.bundle_forge:update_result lj.INT matches 1 run playsound minecraft:block.anvil.use player @a ~ ~ ~
execute if score $lj.bundle_forge:update_result lj.INT matches -1 run playsound minecraft:block.grindstone.use player @a ~ ~ ~
execute if score $lj.bundle_forge:update_result lj.INT matches -2147483648 run playsound minecraft:block.note_block.didgeridoo player @a ~ ~ ~
data modify entity @s equipment.head.components set from entity @s equipment.head.components."minecraft:custom_data"."lj.bundle_forge:tech".display_components
data modify entity @s equipment.head.components merge from entity @s equipment.mainhand.components
data modify entity @s equipment.head.components."minecraft:bundle_contents" set from entity @s equipment.head.components."minecraft:custom_data"."lj.bundle_forge:tech".runes
