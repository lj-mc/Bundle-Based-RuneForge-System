function #lj.core:register
execute if entity @s[type=minecraft:player] run function #lj.core:register_a
execute if entity @s[type=minecraft:item] run function #lj.core:register_i
execute if entity @s[type=!minecraft:item,type=!minecraft:player] run function #lj.core:register_m
tag @s add lj.core.T_Registered