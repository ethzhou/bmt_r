# Create gate in the world facing east
# { bits:, color:, }

# VIA gate_place
# AS gate_heart armor_stand
# AT @s


# Set rotation

rotate @s -90 0
execute store result score @s bmt_r_gate_facing run data get entity @s Rotation[0]

# Check for space before placing the structure template facing south

$execute store result score @s test_gate_fit rotated as @s run function bmt_r:gate/gate$(bits)/gate$(bits)_test_fit
execute if score @s test_gate_fit matches 0 run return run function bmt_r:gate/construct/gate_place_fail

# Place structure template

$execute rotated as @s run place template bmt_r:$(color)_gate$(bits) ^-1 ^-1 ^-1 counterclockwise_90
$function bmt_r:gate/gate$(bits)/sound/gate$(bits)_place_play_sounds

# Summon keepers

execute rotated as @s run function bmt_r:gate/construct/gate_summon_keepers with entity @s data