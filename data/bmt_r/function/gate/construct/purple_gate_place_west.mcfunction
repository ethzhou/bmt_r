# Create gate in the world facing west

# VIA purple_gate_place
# AS gate armor_stand
# AT @s


# redundant rotation, but safe
rotate @s 90 0

# Check for space before placing the structure template facing south

execute store result score @s test_gate_fit at @s rotated as @s run function bmt_r:gate/construct/test_gate_fit
execute if score @s test_gate_fit matches 0 run return run function bmt_r:gate/construct/gate_place_fail

execute rotated as @s run place template bmt_r:purple_gate ^-2 ^-1 ^-1 clockwise_90