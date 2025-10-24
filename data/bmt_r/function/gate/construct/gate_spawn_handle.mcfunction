# Handle spawn of gate germ
# { color:, bits:, }

# VIA gate_tick
# AS gate_heart armor_stand


kill @n[tag=gate_germ]

$data modify entity @s Tags set value ["gate_heart","$(color)_gate","gate$(bits)"]
$data modify entity @s data set value {color:$(color),bits:$(bits)}
data modify entity @s NoAI set value true
data modify entity @s NoGravity set value true
# TODO Invisible true
# data modify entity @s Invisible set value true

tp ~ ~1 ~

# Place the gate in the correct direction
$execute at @s run function bmt_r:gate/construct/gate_place {color:$(color),bits:$(bits)}