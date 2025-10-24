# Create gate in the world facing west

# VIA gate1_place
# AS gate_heart armor_stand
# AT @s


# redundant rotation, but safe
rotate @s 90 0

# Check for space before placing the structure template facing south

execute store result score @s test_gate_fit rotated as @s run function bmt_r:gate/gate1/construct/gate1_test_fit
execute if score @s test_gate_fit matches 0 run return run function bmt_r:gate/gate_place_fail

# Place structure template

$execute rotated as @s run place template bmt_r:$(color)_gate1 ^-2 ^-1 ^-1 clockwise_90
function bmt_r:gate/gate1/sound/gate1_place_play_sounds

# Summon keepers

execute rotated as @s run function bmt_r:gate/gate1/construct/gate1_summon_keepers