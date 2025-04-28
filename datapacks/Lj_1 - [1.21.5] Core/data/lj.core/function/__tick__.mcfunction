execute as @e[tag=!lj.core.T.Registered] at @s run function lj.core:register
function #lj.core:tick
execute as @a at @s run function #lj.core:tick_a
execute as @e at @s run function #lj.core:tick_e