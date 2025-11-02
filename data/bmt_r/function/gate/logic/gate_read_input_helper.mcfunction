# Add the value of the keeper of the specified blueprint
# { local_x:, local_y:, local_z:, place_value:, terminal_type:, }

# VIA gate_read_input_helper
# AS gate_heart armor_stand
# AT @s


# $function bmt_r:util/debug/debug_calculation {command:'say ^$(local_x) ^$(local_y) ^$(local_z) $(place_value) $(terminal_type)'}
$function bmt_r:util/debug/debug_calculation {command:'execute positioned ^$(local_x) ^$(local_y) ^$(local_z) unless entity @n[distance=..0.1,tag=gate_keeper,type=armor_stand] run tellraw @a {"color":"gold","text":"warning: no keeper found during read"}'}

# Replace repeater if necessary

$execute unless block ^$(local_x) ^$(local_y) ^$(local_z) minecraft:repeater[powered=true] run setblock ^$(local_x) ^$(local_y) ^$(local_z) repeater[powered=false]

# Contribute score

$function bmt_r:util/debug/debug_calculation {command:'execute if block ^$(local_x) ^$(local_y) ^$(local_z) repeater[powered=true] run tellraw @a {color:"white","text":"input $(place_value) is powered"}'}
$function bmt_r:util/debug/debug_calculation {command:'execute unless block ^$(local_x) ^$(local_y) ^$(local_z) repeater[powered=true] run tellraw @a {color:"gray","text":"input $(place_value) is powered"}'}
$execute positioned ^$(local_x) ^$(local_y) ^$(local_z) as @n[distance=..0.1,tag=gate_keeper,tag=gate_keeper_input,type=armor_stand] if block ~ ~ ~ repeater[powered=true] run scoreboard players operation #current_gate bmt_r_gate_inputs += @s bmt_r_gate_inputs