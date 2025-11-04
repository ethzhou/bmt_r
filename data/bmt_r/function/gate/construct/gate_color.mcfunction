# Replace colored blocks with correct color
# { bits:, color:, }

# VIA gate_place_continue
# AS gate_heart armor_stand
# AT @s


$scoreboard players set #y1 bmt_r_local $(bits)
scoreboard players operation #y1 bmt_r_local -= #1 bmt_r_global
execute store result storage bmt_r:local y1 int 2 run scoreboard players get #y1 bmt_r_local
$data modify storage bmt_r:local color set value $(color)

function bmt_r:gate/construct/gate_color_helper with storage bmt_r:local