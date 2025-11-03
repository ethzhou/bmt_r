# Set the repeater at the keeper of the specified blueprint
# { input_vector:, }

# VIA gate_write_output_helper
# AS output keeper armor_stand
# AT @s


# Conditionally power the repeater

$function bmt_r:util/debug/debug_calculation {command:'execute if entity @s[nbt={data:{fiber:[{key:$(input_vector)}]}}] run tellraw @a {color:"white","text":"output is powered"}'}
$function bmt_r:util/debug/debug_calculation {command:'execute unless entity @s[nbt={data:{fiber:[{key:$(input_vector)}]}}] run tellraw @a {color:"gray","text":"output is not powered"}'}

$execute if entity @s[nbt={data:{fiber:[{key:$(input_vector)}]}}] run return run function bmt_r:gate/logic/gate_replace_repeater_powered with entity @s data

setblock ~ ~ ~ glass