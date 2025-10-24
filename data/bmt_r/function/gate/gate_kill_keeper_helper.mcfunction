# Kill keeper armor stand with the specified keeper blueprint
# { local_x:, local_y:, local_z:, place_value:, terminal_type:, }

# VIA gate_summon_keeper_helper
# AS gate_heart armor_stand
# AT gate_heart armor_stand


$function bmt_r:util/debug/debug {command:'say ^$(local_x) ^$(local_y) ^$(local_z) $(place_value) $(terminal_type)'}
$function bmt_r:util/debug/debug {command:'execute positioned ^$(local_x) ^$(local_y) ^$(local_z) unless entity @n[distance=..0.1,tag=gate_keeper,type=armor_stand] run tellraw @a {"color":"gold","text":"warning: no keeper found during kill"}'}

$execute positioned ^$(local_x) ^$(local_y) ^$(local_z) run return run kill @n[distance=..0.1,tag=gate_keeper,type=armor_stand]