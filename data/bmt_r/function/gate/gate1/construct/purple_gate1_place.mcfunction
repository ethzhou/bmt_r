# Place the gate in correct direction

# VIA purple_gate1_spawn_handle
# AS gate_heart armor_stand
# AT @s


# Branch by cardinal direction

summon armor_stand ~ ~ ~ {Tags:["orientator"]}
rotate @n[tag=orientator,type=armor_stand] facing entity @p

# S
execute if entity @n[tag=orientator,type=armor_stand,y_rotation=135..180] run function bmt_r:gate/gate1/construct/purple_gate1_place_south
execute if entity @n[tag=orientator,type=armor_stand,y_rotation=-180..-135] unless entity @n[tag=orientator,type=armor_stand,y_rotation=180] unless entity @n[tag=orientator,type=armor_stand,y_rotation=-135] run function bmt_r:gate/gate1/construct/purple_gate1_place_south

# W
execute if entity @n[tag=orientator,type=armor_stand,y_rotation=-135..-45] unless entity @n[tag=orientator,type=armor_stand,y_rotation=-45] run function bmt_r:gate/gate1/construct/purple_gate1_place_west

# N
execute if entity @n[tag=orientator,type=armor_stand,y_rotation=-45..45] unless entity @n[tag=orientator,type=armor_stand,y_rotation=45] run function bmt_r:gate/gate1/construct/purple_gate1_place_north

# E
execute if entity @n[tag=orientator,type=armor_stand,y_rotation=45..135] unless entity @n[tag=orientator,type=armor_stand,y_rotation=135] run function bmt_r:gate/gate1/construct/purple_gate1_place_east

kill @n[tag=orientator,type=armor_stand]

schedule clear bmt_r:gate/gate1/loop/gate1_loop_replace_kill_switch
function bmt_r:gate/gate1/loop/gate1_loop_replace_kill_switch