# Place repeater at keeper facing gate direction


# AS gate_heart armor_stand
# AT gate_keeper armor_stand


# Note that the repeaters "face" their back ends

execute if score @s bmt_r_gate_facing matches 0 run setblock ~ ~ ~ repeater[facing=north,powered=false]
execute if score @s bmt_r_gate_facing matches -90 run setblock ~ ~ ~ repeater[facing=west,powered=false]
execute if score @s bmt_r_gate_facing matches 90 run setblock ~ ~ ~ repeater[facing=east,powered=false]
execute if score @s bmt_r_gate_facing matches 180 run setblock ~ ~ ~ repeater[facing=south,powered=false]