# CALLER gate armor_stand

kill @n[tag=gate_germ]

$say gate at $(Pos)

data modify entity @s Tags set value ["gate","purple_gate"]
data modify entity @s NoAI set value true
data modify entity @s NoGravity set value true
# TODO
# data modify entity @s Invisible set value true

tp ~ ~1 ~
execute at @s run function bmt_r:gate/construct/purple_gate_place