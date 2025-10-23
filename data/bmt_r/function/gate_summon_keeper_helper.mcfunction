# Help summon keeper armor stand with the specified keeper blueprint
# { local_x:, local_y:, local_z:, place_value:, terminal_type:, }

# VIA gate_summon_keeper_helper
# AS gate_keeper armor_stand
# AT gate_heart armor_stand


$function bmt_r:util/debug/debug {command:'say ^$(local_x) ^$(local_y) ^$(local_z) $(place_value) $(terminal_type)'}

data modify entity @s Rotation set from entity @n[distance=..1,tag=gate_heart,type=armor_stand]
$tp ^$(local_x) ^$(local_y) ^$(local_z)
$data modify entity @s Tags set value ["gate_keeper","gate_keeper_$(terminal_type)"]
data modify entity @s NoAI set value true
data modify entity @s NoGravity set value true
# TODO Invisible true
# data modify entity @s Invisible set value true
$scoreboard players set @s bmt_r_gate_inputs $(place_value)