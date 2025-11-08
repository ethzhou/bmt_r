# Calibration State 4 - Update keepers and clean up calibration process
# { bits:, color:, }

# VIA calibrate_2a WITH storage bmt_r:calibration parameters


function bmt_r:util/debug/debug {command:'tellraw @a {"color":"yellow","text":"Update keepers... (4)"}'}

$data modify storage bmt_r:calibration fibers.$(color)_gate$(bits) set from storage bmt_r:calibration new_fibers.$(color)_gate$(bits)

# Update

data modify storage bmt_r:calibration parameters.place_value set value 1
function bmt_r:calibrate/calibrate_4_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 2
function bmt_r:calibrate/calibrate_4_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 4
function bmt_r:calibrate/calibrate_4_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 8
function bmt_r:calibrate/calibrate_4_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 16
function bmt_r:calibrate/calibrate_4_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 32
function bmt_r:calibrate/calibrate_4_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 64
function bmt_r:calibrate/calibrate_4_helper with storage bmt_r:calibration parameters
data modify storage bmt_r:calibration parameters.place_value set value 128
function bmt_r:calibrate/calibrate_4_helper with storage bmt_r:calibration parameters

$execute as @e[tag=sentry_display,tag=sentry$(bits)_display,tag=$(color)_sentry_display,type=block_display] at @s run setblock ~ ~ ~ air
$execute as @e[tag=sentry_display,tag=sentryQ_display,tag=$(color)_sentry_display,type=block_display] at @s run setblock ~ ~-1 ~ air

$tellraw @p {"color":"green","text":"Calibration of $(bits)-bit $(color) gates is complete."}

scoreboard players set #calibration bmt_r_calibration 0