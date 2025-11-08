# Calibration State 2a - Check outputs and append the input vector to each output keepers fiber list

# VIA calibrate_manage_state


function bmt_r:util/debug/debug {command:'tellraw @a {"color":"yellow","text":"Process outputs... (2a)"}'}


execute store result storage bmt_r:calibration parameters.input_vector short 1 run scoreboard players get #input_vector bmt_r_calibration

data modify storage bmt_r:calibration parameters.place_value set value 1
function bmt_r:calibrate/calibrate_2a_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 2
function bmt_r:calibrate/calibrate_2a_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 4
function bmt_r:calibrate/calibrate_2a_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 8
function bmt_r:calibrate/calibrate_2a_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 16
function bmt_r:calibrate/calibrate_2a_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 32
function bmt_r:calibrate/calibrate_2a_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 64
function bmt_r:calibrate/calibrate_2a_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 128
function bmt_r:calibrate/calibrate_2a_helper with storage bmt_r:calibration parameters
data remove storage bmt_r:calibration parameters.place_value

data remove storage bmt_r:calibration parameters.input_vector

scoreboard players add #k bmt_r_calibration 1
function bmt_r:util/debug/debug {command:'tellraw @a {"color":"gold","score":{"name":"#k","objective":"bmt_r_calibration"}}'}
execute unless score #k bmt_r_calibration < #n bmt_r_calibration run return run function bmt_r:calibrate/calibrate_4 with storage bmt_r:calibration parameters


function bmt_r:calibrate/calibrate_2b with storage bmt_r:calibration parameters