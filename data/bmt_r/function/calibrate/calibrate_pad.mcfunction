# Prepend 0s to the input vector up to appropriate length
# { color:, }

# VIA calibrate, calibrate_2b WITH storage bmt_r:calibration parameters


function bmt_r:util/debug/debug {command:'tellraw @a {"color":"blue","text":"padding..."}'}

function bmt_r:util/debug/debug {command:'tellraw @a {"color":"dark_gray","text":"traverse , input_vector_stack"}'}
function bmt_r:util/debug/debug {command:'tellraw @a {source:"storage",storage:"bmt_r:calibration",nbt:"traverse"}'}
function bmt_r:util/debug/debug {command:'tellraw @a {source:"storage",storage:"bmt_r:calibration",nbt:"input_vector_stack"}'}

function bmt_r:util/debug/debug {command:'execute unless score #d bmt_r_calibration < #f bmt_r_calibration run tellraw @a {"color":"blue","text":"end padding"}'}

execute unless score #d bmt_r_calibration < #f bmt_r_calibration run return 0

data modify storage bmt_r:calibration traverse prepend from storage bmt_r:calibration fringe[0]
data modify storage bmt_r:calibration input_vector_stack prepend value 0
data remove storage bmt_r:calibration fringe[0]

scoreboard players add #d bmt_r_calibration 1

function bmt_r:calibrate/calibrate_pad with storage bmt_r:calibration parameters