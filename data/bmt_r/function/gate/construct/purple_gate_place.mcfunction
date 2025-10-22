# Place gate facing correct direction

summon armor_stand ~ ~ ~ {Tags:["orientator"]}
rotate @n[tag=orientator,type=armor_stand] facing entity @p

# TODO remove function arguments

# S
execute if entity @n[tag=orientator,type=armor_stand,y_rotation=135..180] run function bmt_r:gate/construct/purple_gate_place_south with entity @n[tag=orientator]
execute if entity @n[tag=orientator,type=armor_stand,y_rotation=-180..-135] unless entity @n[tag=orientator,type=armor_stand,y_rotation=180] unless entity @n[tag=orientator,type=armor_stand,y_rotation=-135] run function bmt_r:gate/construct/purple_gate_place_south with entity @n[tag=orientator]
# W
execute if entity @n[tag=orientator,type=armor_stand,y_rotation=-135..-45] unless entity @n[tag=orientator,type=armor_stand,y_rotation=-45] run function bmt_r:gate/construct/purple_gate_place_west with entity @n[tag=orientator]
# N
execute if entity @n[tag=orientator,type=armor_stand,y_rotation=-45..45] unless entity @n[tag=orientator,type=armor_stand,y_rotation=45] run function bmt_r:gate/construct/purple_gate_place_north with entity @n[tag=orientator]
# E
execute if entity @n[tag=orientator,type=armor_stand,y_rotation=45..135] unless entity @n[tag=orientator,type=armor_stand,y_rotation=135] run function bmt_r:gate/construct/purple_gate_place_east with entity @n[tag=orientator]

kill @n[tag=orientator,type=armor_stand]