# Replace colored blocks with correct color
# { bits:, color:, }

# VIA gate_place_continue
# AS gate_heart armor_stand
# AT @s


# Find the maximum y-coordinate
$scoreboard players set #gate_y1 bmt_r_local $(bits)
scoreboard players operation #gate_y1 bmt_r_local -= #1 bmt_r_global
execute store result storage bmt_r:local gate_y1 int 2 run scoreboard players get #gate_y1 bmt_r_local

$data modify storage bmt_r:local color set value $(color)

function bmt_r:gate/construct/gate_color_helper with storage bmt_r:local