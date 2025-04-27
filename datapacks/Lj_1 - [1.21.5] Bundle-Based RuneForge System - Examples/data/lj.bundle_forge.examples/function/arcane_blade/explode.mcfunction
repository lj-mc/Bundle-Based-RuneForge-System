scoreboard players set @s lj.bundle_forge.examples.V.explode_time -2
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2
execute anchored eyes run particle minecraft:totem_of_undying ^ ^ ^ 0.5 0.5 0.5 0 40
function lj.bundle_forge.examples:arcane_blade/end