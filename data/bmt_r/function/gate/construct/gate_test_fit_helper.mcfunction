# Check the space around the spawn location
# { gate_y1:, gate_y1_minus_1:, }

# VIA gate_test_fit
# AS gate_heart armor_stand
# AT @s


$say $(gate_y1) $(gate_y1_minus_1)

# Check air was all of the main volume of the gate
execute store result score #non_air bmt_r_local run fill ^-1 ^-1 ^0 ^1 ^-1 ^1 void_air replace #air
$fill ^-1 ^-1 ^0 ^1 ^$(gate_y1_minus_1) ^1 air replace void_air
function bmt_r:util/debug/debug {command:"say main"}
function bmt_r:util/debug/debug {command:'tellraw @a {"color":"gold","score":{"name":"#non_air","objective":bmt_r_local"}}'}
execute unless score #non_air bmt_r_local matches 6 run return fail

# Check air was all of the left tail of the gate
$execute store result score #non_air bmt_r_local run fill ^-1 ^-1 ^-1 ^-1 ^$(gate_y1) ^-1 void_air replace #air
$fill ^-1 ^-1 ^-1 ^-1 ^$(gate_y1) ^-1 air replace void_air
function bmt_r:util/debug/debug {command:'say left tail'}
function bmt_r:util/debug/debug {command:'tellraw @a {"score":{"name":"#non_air","objective":bmt_r_local"}}'}
execute unless score #non_air bmt_r_local matches 2 run return fail

# Check air was all of the right tail of the gate
$execute store result score #non_air bmt_r_local run fill ^1 ^-1 ^-1 ^1 ^$(gate_y1) ^-1 void_air replace #air
$fill ^1 ^-1 ^-1 ^1 ^$(gate_y1) ^-1 air replace void_air
function bmt_r:util/debug/debug {command:'say right tail'}
function bmt_r:util/debug/debug {command:'tellraw @a {"score":{"name":"#non_air","objective":bmt_r_local"}}'}
execute unless score #non_air bmt_r_local matches 2 run return fail

# Check air was all of the volume of the upper strip of carpet
$execute store result score #non_air bmt_r_local run fill ^-1 ^$(gate_y1) ^0 ^1 ^$(gate_y1) ^0 void_air replace #air
$fill ^-1 ^$(gate_y1) ^0 ^1 ^$(gate_y1) ^0 air replace void_air
function bmt_r:util/debug/debug {command:'say upper strip'}
function bmt_r:util/debug/debug {command:'tellraw @a {"score":{"name":"#non_air","objective":bmt_r_local"}}'}
execute unless score #non_air bmt_r_local matches 3 run return fail

# Check air was the position of the highest output keeper
$execute store result score #non_air bmt_r_local run fill ^0 ^$(gate_y1) ^1 ^0 ^$(gate_y1) ^1 void_air replace #air
$fill ^0 ^$(gate_y1) ^1 ^0 ^$(gate_y1) ^1 air replace void_air
function bmt_r:util/debug/debug {command:'say highest output keeper'}
function bmt_r:util/debug/debug {command:'tellraw @a {"score":{"name":"#non_air","objective":bmt_r_local"}}'}
execute unless score #non_air bmt_r_local matches 1 run return fail

return 1