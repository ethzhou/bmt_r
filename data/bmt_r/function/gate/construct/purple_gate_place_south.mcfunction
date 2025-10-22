# CALLER gate armor_stand

# redundant rotation, but safe
rotate @s 0 0

execute store result score @s test_gate_fit at @s rotated as @s run function bmt_r:gate/construct/test_gate_fit
execute if score @s test_gate_fit matches 0 run return run function bmt_r:gate_place_fail

execute rotated as @s run place template bmt_r:purple_gate ^-2 ^-1 ^-1