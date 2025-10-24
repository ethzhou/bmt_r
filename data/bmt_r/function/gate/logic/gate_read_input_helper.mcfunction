# Add the value of the keeper of the specified blueprint
# { local_x:, local_y:, local_z:, place_value:, terminal_type:, }

# VIA gate_read_input_helper
# AS gate_heart armor_stand
# AT @s


$function bmt_r:util/debug/debug {command:'say ^$(local_x) ^$(local_y) ^$(local_z) $(place_value) $(terminal_type)'}
$function bmt_r:util/debug/debug {command:'execute positioned ^$(local_x) ^$(local_y) ^$(local_z) unless entity @n[distance=..0.1,tag=gate_keeper,type=armor_stand] run tellraw @a {"color":"gold","text":"warning: no keeper found during read"}'}

# Replace repeater if necessary

$execute unless block ^$(local_x) ^$(local_y) ^$(local_z) $(place_value) minecraft:repeater[powered=true] run setblock ^$(local_x) ^$(local_y) ^$(local_z) $(place_value) repeater[powered=false]

# Contribute score

$return run execute if block ^$(local_x) ^$(local_y) ^$(local_z) $(place_value) repeater[powered=true] run scoreboard players operation #current_gate bmt_r_gate_inputs += @s bmt_r_gate_inputs