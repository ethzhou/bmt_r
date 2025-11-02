# Read inputs and yield output

# VIA gate_tick
# AS gate_heart armor_stand
# AT @s


scoreboard players set #current_gate bmt_r_gate_inputs 0

# Read inputs

function bmt_r:gate/logic/gate_read_inputs with entity @s data

# Write input to command storage

execute store result storage bmt_r:local input_vector int 1 run scoreboard players get #current_gate bmt_r_gate_inputs
function bmt_r:util/debug/debug_calculation {command:'tellraw @a {color:"light_purple",type:"nbt",storage:"bmt_r:local",nbt:"input_vector"}'}

# Write outputs

function bmt_r:gate/logic/gate_write_outputs with entity @s data