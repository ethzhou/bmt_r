# Set the repeater at the keeper of the specified blueprint
# { input_vector:, }

# VIA gate_write_output_helper
# AS output keeper armor_stand
# AT @s


# Replace the repeater

setblock ~ ~ ~ repeater[powered=false]

# Conditionally power the repeater

$execute if data entity @s data.active_at_inputs[$(input_vector)] run return run setblock ~ ~ ~ repeater[powered=true]

function bmt_r:util/debug/debug {command:'say did power'}