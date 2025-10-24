# Handle spawn of gate germ
<<<<<<<< HEAD:data/bmt_r/function/gate/construct/gate_spawn_handle.mcfunction
# { color:, bits:, }
========
# { color:, }
>>>>>>>> ef81b47f987c8564a61203ec4b91fe97c04b6c8b:data/bmt_r/function/gate/gate1/gate1_spawn_handle.mcfunction

# VIA gate_tick
# AS gate_heart armor_stand


kill @n[tag=gate_germ]

<<<<<<<< HEAD:data/bmt_r/function/gate/construct/gate_spawn_handle.mcfunction
$data modify entity @s Tags set value ["gate_heart","$(color)_gate","gate$(bits)"]
$data modify entity @s data set value {color:$(color),bits:$(bits)}
========
$data modify entity @s Tags set value ["gate_heart","$(color)_gate"]
>>>>>>>> ef81b47f987c8564a61203ec4b91fe97c04b6c8b:data/bmt_r/function/gate/gate1/gate1_spawn_handle.mcfunction
data modify entity @s NoAI set value true
data modify entity @s NoGravity set value true
# TODO Invisible true
# data modify entity @s Invisible set value true

tp ~ ~1 ~

# Place the gate in the correct direction
<<<<<<<< HEAD:data/bmt_r/function/gate/construct/gate_spawn_handle.mcfunction
$execute at @s run function bmt_r:gate/construct/gate_place {color:$(color),bits:$(bits)}
========
$execute at @s run function bmt_r:gate/gate1/construct/gate1_place {color:$(color)}
>>>>>>>> ef81b47f987c8564a61203ec4b91fe97c04b6c8b:data/bmt_r/function/gate/gate1/gate1_spawn_handle.mcfunction
