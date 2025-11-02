# Read inputs and yield output

# VIA gate_tick
# AS gate_heart armor_stand
# AT @s


scoreboard players set #current_gate bmt_r_gate_inputs 0

# Read inputs

function bmt_r:gate/logic/gate_read_inputs with entity @s data

# Write input to command storage

execute store result storage bmt_r:local input_vector.input_vector.key short 1 run scoreboard players get #current_gate bmt_r_gate_inputs

# Write outputs

function bmt_r:gate/logic/gate_write_outputs with entity @s data