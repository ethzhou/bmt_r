# Calibration State 2b - Generate the next input
# { color:, }

# VIA calibrate_2a WITH storage bmt_r:calibration parameters


function bmt_r:util/debug/debug {command:'tellraw @a {"color":"yellow","text":"Generating next input... (2b)"}'}


# Prune

function bmt_r:calibrate/calibrate_prune with storage bmt_r:calibration parameters


# Set to 1

function bmt_r:util/debug/debug {command:'tellraw @a {"color":"aqua","text":"flipping first 0 to 1..."}'}

function bmt_r:util/debug/debug {command:'execute store result score #current_bit bmt_r_calibration run data get storage bmt_r:calibration input_vector_stack[0] 1'}
function bmt_r:util/debug/debug {command:'execute unless score #current_bit bmt_r_calibration matches 0 run tellraw @a {"color":"gold","text":"warning: leading not 0 after prune"}'}

data modify storage bmt_r:calibration input_vector_stack[0] set value 1

execute store result score #current_place_value bmt_r_calibration run data get storage bmt_r:calibration traverse[0] 1
scoreboard players operation #input_vector bmt_r_calibration += #current_place_value bmt_r_calibration

function bmt_r:util/debug/debug {command:'tellraw @a {"color":"dark_purple","score":{"name":"#current_place_value","objective":"bmt_r_calibration"}}'}
function bmt_r:util/debug/debug {command:'tellraw @a {"color":"dark_purple","score":{"name":"#input_vector","objective":"bmt_r_calibration"}}'}
$function bmt_r:util/debug/debug {command:'execute unless score @e[tag=sentry_display,tag=!sentryQ_display,tag=$(color)_sentry_display,type=block_display] bmt_r_sentry_values = #current_place_value bmt_r_calibration run tellraw @a {"color":"gold","text":"warning: no display of color found"'}

$execute as @e[tag=sentry_display,tag=!sentryQ_display,tag=$(color)_sentry_display,type=block_display] if score @s bmt_r_sentry_values = #current_place_value bmt_r_calibration at @s run setblock ~ ~ ~ redstone_block


# Pad

function bmt_r:calibrate/calibrate_pad with storage bmt_r:calibration parameters


# Propagate

# function bmt_r:util/debug/debug {command:'tellraw @a {source:"storage",storage:"bmt_r:calibration",nbt:"traverse"}'}
# function bmt_r:util/debug/debug {command:'tellraw @a {source:"storage",storage:"bmt_r:calibration",nbt:"input_vector_stack"}'}

function bmt_r:calibrate/calibrate_to3