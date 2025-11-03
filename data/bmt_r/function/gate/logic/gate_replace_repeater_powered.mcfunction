# Place powered repeater at keeper facing gate direction
# { powered:, }


# AS armor_stand


# Note that the repeaters "face" their back ends

execute if score @s bmt_r_gate_facing matches 0 run setblock ~ ~ ~ repeater[facing=north,powered=true]
execute if score @s bmt_r_gate_facing matches -90 run setblock ~ ~ ~ repeater[facing=west,powered=true]
execute if score @s bmt_r_gate_facing matches 90 run setblock ~ ~ ~ repeater[facing=east,powered=true]
execute if score @s bmt_r_gate_facing matches 180 run setblock ~ ~ ~ repeater[facing=south,powered=true]