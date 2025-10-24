# Set the repeater at the keeper of the specified blueprint
# { local_x:, local_y:, local_z:, place_value:, terminal_type:, }

# VIA gate_write_output_helper
# AS gate_heart armor_stand
# AT @s


$function bmt_r:util/debug/debug {command:'say ^$(local_x) ^$(local_y) ^$(local_z) $(place_value) $(terminal_type)'}
$function bmt_r:util/debug/debug {command:'execute positioned ^$(local_x) ^$(local_y) ^$(local_z) unless entity @n[distance=..0.1,tag=gate_keeper,type=armor_stand] run tellraw @a {"color":"gold","text":"warning: no keeper found during write"}'}

$execute positioned ^$(local_x) ^$(local_y) ^$(local_z) as @n[distance=..0.1,tag=gate_keeper,type=armor_stand] at @n run return run function bmt_r:gate/logic/gate_write_output_helper2 with storage bmt_r:local input_vector