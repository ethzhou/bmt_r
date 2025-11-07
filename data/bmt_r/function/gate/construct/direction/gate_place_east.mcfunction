# Create gate in the world facing east
# { bits:, color:, }

# VIA gate_place
# AS gate_heart armor_stand
# AT @s
# ROTATED 0


# Set rotation

rotate @s -90 0
execute store result score @s bmt_r_gate_facing run data get entity @s Rotation[0]

# Check for space before placing the structure template facing south

execute store result score #pass bmt_r_local rotated as @s run function bmt_r:gate/construct/gate_test_fit with entity @s data
execute if score #pass bmt_r_local matches 0 run return run function bmt_r:gate/construct/gate_place_fail

# Place structure template

$execute rotated as @s run place template bmt_r:gate$(bits) ^-1 ^-1 ^-1 counterclockwise_90


execute rotated as @s run function bmt_r:gate/construct/gate_place_continue with entity @s data