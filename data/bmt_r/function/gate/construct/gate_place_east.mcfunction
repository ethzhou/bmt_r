# Create gate in the world facing east
# { color:, bits:, }

# VIA gate_place
# AS gate_heart armor_stand
# AT @s


rotate @s -90 0

# Check for space before placing the structure template facing south

$execute store result score @s test_gate_fit rotated as @s run function bmt_r:gate/gate$(bits)/gate$(bits)_test_fit
execute if score @s test_gate_fit matches 0 run return run function bmt_r:gate/gate_place_fail

# Place structure template

$execute rotated as @s run place template bmt_r:$(color)_gate$(bits) ^-2 ^-1 ^-1 counterclockwise_90
$function bmt_r:gate/gate$(bits)/sound/gate$(bits)_place_play_sounds

# Summon keepers

$execute rotated as @s run function bmt_r:gate/gate$(bits)/gate$(bits)_summon_keepers