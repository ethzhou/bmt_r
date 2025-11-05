# Remove leading 1s from input vector
# { color:, }

# VIA calibrate_2b


function bmt_r:util/debug/debug {command:'tellraw @a {"color":"aqua","text":"pruning..."}'}

function bmt_r:util/debug/debug {command:'tellraw @a {"color":"gray","text":"traverse , input_vector_stack"}'}
function bmt_r:util/debug/debug {command:'tellraw @a {source:"storage",storage:"bmt_r:calibration",nbt:"traverse"}'}
function bmt_r:util/debug/debug {command:'tellraw @a {source:"storage",storage:"bmt_r:calibration",nbt:"input_vector_stack"}'}

execute store result score #current_bit bmt_r_calibration run data get storage bmt_r:calibration input_vector_stack[0] 1
function bmt_r:util/debug/debug {command:'execute if score #current_bit bmt_r_calibration matches 0 run tellraw @a {"color":"aqua","text":"end pruning"}'}
execute if score #current_bit bmt_r_calibration matches 0 run return 0

execute store result score #current_place_value bmt_r_calibration run data get storage bmt_r:calibration traverse[0] 1
scoreboard players operation #input_vector bmt_r_calibration -= #current_place_value bmt_r_calibration

data modify storage bmt_r:calibration fringe prepend from storage bmt_r:calibration traverse[0]
data remove storage bmt_r:calibration traverse[0]
data remove storage bmt_r:calibration input_vector_stack[0]

function bmt_r:util/debug/debug {command:'tellraw @a {"color":"light_purple","score":{"name":"#current_place_value","objective":"bmt_r_calibration"}}'}

scoreboard players remove #d bmt_r_calibration 1

$execute as @e[tag=sentry_display,tag=sentry$(bits)_display,tag=!sentryQ_display,tag=$(color)_sentry_display,type=block_display] if score @s bmt_r_sentry_values = #current_place_value bmt_r_calibration at @s run setblock ~ ~ ~ bedrock

function bmt_r:calibrate/calibrate_prune with storage bmt_r:calibration parameters