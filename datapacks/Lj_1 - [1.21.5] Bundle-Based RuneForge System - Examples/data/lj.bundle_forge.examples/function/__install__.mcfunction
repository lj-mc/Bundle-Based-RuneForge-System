scoreboard objectives add lj.bundle_forge.examples.V.sweep_attack_phase dummy
scoreboard objectives add lj.bundle_forge.examples.V.sweep_cd minecraft.custom:minecraft.play_time
scoreboard objectives add lj.bundle_forge.examples.V.right_click minecraft.custom:minecraft.play_time
scoreboard objectives add lj.bundle_forge.examples.V.arcane_phase dummy
scoreboard objectives add lj.bundle_forge.examples.V.arcane_cd minecraft.custom:minecraft.play_time
scoreboard objectives add lj.bundle_forge.examples.V.arcane_cd_s dummy
scoreboard players set $lj.bundle_forge.examples:C_-20 lj.INT -20
scoreboard objectives add lj.bundle_forge.examples.V.spin_left dummy
scoreboard objectives add lj.bundle_forge.examples.V.spin_right dummy
scoreboard objectives add lj.bundle_forge.examples.V.rot dummy
scoreboard objectives add lj.bundle_forge.examples.V.spin_time minecraft.custom:minecraft.play_time
scoreboard objectives add lj.bundle_forge.examples.V.explode_time minecraft.custom:minecraft.play_time
data modify storage lj.bundle_forge:config error_msg_ir."lj.bundle_forge.examples:enchant" set value "This item already has enchantments"
execute unless data storage lj.bundle_forge:config persist_fields run data modify storage lj.bundle_forge:config persist_fields set value ['id','components."minecraft:damage"']