# Handle spawn of gate germ

# VIA purple_gate_tick
# AS gate_heart armor_stand


kill @n[tag=gate_germ]

$say gate at $(Pos)

# TODO rename tag to gate_heart
data modify entity @s Tags set value ["gate_heart","purple_gate"]
data modify entity @s NoAI set value true
data modify entity @s NoGravity set value true
# TODO Invisible true
# data modify entity @s Invisible set value true

tp ~ ~1 ~

# Place the gate in the correct direction
execute at @s run function bmt_r:gate/construct/purple_gate_place