# Calibration State 1 - Start gate calibration
# { bits:, color:, }


# Check not already calibrating

execute unless score #calibration bmt_r_calibration matches 0 run return run function bmt_r:calibrate/fail/calibrate_fail_already_calibrating
scoreboard players set #calibration bmt_r_calibration 1

# Check all sentries are present
$execute unless entity @e[tag=sentry_heart,tag=sentry$(bits),tag=sentryA,tag=$(color)_sentry,type=armor_stand] run return run function bmt_r:calibrate/fail/calibrate_fail_sentry_missing
$execute unless entity @e[tag=sentry_heart,tag=sentry$(bits),tag=sentryB,tag=$(color)_sentry,type=armor_stand] run return run function bmt_r:calibrate/fail/calibrate_fail_sentry_missing
$execute unless entity @e[tag=sentry_heart,tag=sentry$(bits),tag=sentryQ,tag=$(color)_sentry,type=armor_stand] run return run function bmt_r:calibrate/fail/calibrate_fail_sentry_missing


$tellraw @p {"color":"yellow","text":"Beginning calibration of $(bits)-bit $(color) gates."}


$data modify storage bmt_r:calibration parameters set value {bits:$(bits),color:$(color)}
$scoreboard players set #bits bmt_r_calibration $(bits)

$data modify storage bmt_r:calibration fibers.$(color)_gate$(bits) set value {\
    "1":[],\
    "2":[],\
    "4":[],\
    "8":[],\
    "16":[],\
    "32":[],\
    "64":[],\
    "128":[]\
}

# Track number of input vectors checked
scoreboard players set #k bmt_r_calibration 0
$scoreboard players operation #n bmt_r_calibration = #$(bits) bmt_r_powers_of_2
scoreboard players operation #n bmt_r_calibration *= #2 bmt_r_global

function bmt_r:util/debug/debug {command:'tellraw @a {"color":"gold","score":{"name":"#n","objective":"bmt_r_calibration"}}'}

# Track length of input vector
scoreboard players set #d bmt_r_calibration 0
$scoreboard players set #f bmt_r_calibration $(bits)
scoreboard players operation #f bmt_r_calibration *= #2 bmt_r_global

# These lists store the set of place values associated with the set of inputs
#   Track remaining inputs to traverse
$data modify storage bmt_r:calibration fringe set from storage bmt_r:calibration input_sets.$(bits)
#   Track current traversal stack by place values
data modify storage bmt_r:calibration traverse set value []
#   Track input vector in stack form
data modify storage bmt_r:calibration input_vector_stack set value []
scoreboard players set #input_vector bmt_r_calibration 0

function bmt_r:calibrate/calibrate_pad with storage bmt_r:calibration parameters

function bmt_r:util/debug/debug {command:'tellraw @p {"text":"fringe, traverse, input_vector_stack"}'}
function bmt_r:util/debug/debug {command:'tellraw @p {source:"storage",storage:"bmt_r:calibration",nbt:"fringe"}'}
function bmt_r:util/debug/debug {command:'tellraw @p {source:"storage",storage:"bmt_r:calibration",nbt:"traverse"}'}
function bmt_r:util/debug/debug {command:'tellraw @p {source:"storage",storage:"bmt_r:calibration",nbt:"input_vector_stack"}'}

# Set blocks at displays
$execute as @e[tag=sentry_display,tag=sentryA_display,tag=$(color)_sentry_display,type=block_display] at @s run setblock ~ ~ ~ bedrock
$execute as @e[tag=sentry_display,tag=sentryB_display,tag=$(color)_sentry_display,type=block_display] at @s run setblock ~ ~ ~ bedrock
# Place rail
$execute as @e[tag=sentry_display,tag=sentryQ_display,tag=$(color)_sentry_display,type=block_display] at @s run setblock ~ ~-1 ~ acacia_slab[type=top]
$execute as @e[tag=sentry_display,tag=sentryQ_display,tag=$(color)_sentry_display,type=block_display] at @s run setblock ~ ~ ~ powered_rail
# Update rails immediately
gamerule doTileDrops false
execute store result score doTileDrops bmt_r_local run gamerule doTileDrops
$execute as @e[tag=sentry_display,tag=sentryQ_display,tag=$(color)_sentry_display,type=block_display] at @s run setblock ~ ~-1 ~ quartz_slab[type=top]
execute if score doTileDrops bmt_r_local matches 1 run gamerule doTileDrops true

function bmt_r:calibrate/calibrate_to3