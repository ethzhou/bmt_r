# Help summon keeper armor stand with the specified keeper blueprint
# { bits:, color:, local_x:, local_y:, local_z:, place_value:, terminal_type:, }


# TODO AT is incorrect (because summon subcommand does not change AT).
# VIA gate_summon_keeper
# AS gate_keeper armor_stand
# AT gate_heart armor_stand


$function bmt_r:util/debug/debug {command:'say $(bits) $(color) ^$(local_x) ^$(local_y) ^$(local_z) $(place_value) $(terminal_type)'}

data modify entity @s Rotation set from entity @n[distance=..1,tag=gate_heart,type=armor_stand]
$tp ^$(local_x) ^$(local_y) ^$(local_z)
$data modify entity @s Tags set value ["gate_keeper","gate$(bits)","gate_keeper_$(terminal_type)","$(color)_gate_keeper"]
data modify entity @s NoAI set value true
data modify entity @s NoGravity set value true
# TODO Invisible true
# data modify entity @s Invisible set value true
$scoreboard players set @s bmt_r_gate_inputs $(place_value)

# Set default fiber, but copy fiber from storage if the data exists
data modify entity @s data.fiber set value []
$execute as @s[tag=gate_keeper_output] if data storage bmt_r:calibration fibers.$(color)_gate$(bits).$(place_value) run data modify entity @s data.fiber set from storage bmt_r:calibration fibers.$(color)_gate$(bits).$(place_value)