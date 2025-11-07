# Check the space around the spawn location
# { bits:, }

# VIA gate_place_[direction]
# AS gate_heart armor_stand
# AT @s


# Find the maximum y-coordinate
$scoreboard players set #gate_y1 bmt_r_local $(bits)
scoreboard players operation #gate_y1 bmt_r_local -= #1 bmt_r_global
scoreboard players operation #gate_y1 bmt_r_local *= #2 bmt_r_global
execute store result storage bmt_r:local gate_y1 int 1 run scoreboard players get #gate_y1 bmt_r_local
scoreboard players operation #gate_y1 bmt_r_local -= #1 bmt_r_global
execute store result storage bmt_r:local gate_y1_minus_1 int 1 run scoreboard players get #gate_y1 bmt_r_local

return run function bmt_r:gate/construct/gate_test_fit_helper with storage bmt_r:local