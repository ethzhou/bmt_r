# Update all matching keepers to match storage data
# { bits:, color:, place_value:, }

# VIA calibrate_4 WITH storage bmt_r:calibration parameters


$execute as @e[tag=gate$(bits),tag=gate_keeper,tag=gate_keeper_output,tag=$(color)_gate_keeper,type=armor_stand] if score @s bmt_r_gate_values matches $(place_value) run data modify entity @s data.fiber set from storage bmt_r:calibration fibers.$(color)_gate$(bits).$(place_value)