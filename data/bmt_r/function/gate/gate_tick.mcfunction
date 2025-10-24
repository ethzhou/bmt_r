# Manage gate system

# AS System


# Handle new gate spawns
execute as @e[tag=gate_germ,tag=gate1_germ,tag=purple_gate_germ] at @s summon minecraft:armor_stand run function bmt_r:gate/construct/gate_spawn_handle {color:purple,bits:1}

# Update gates
execute as @e[tag=gate_heart,tag=gate1] at @s run function #bmt_r:gate_update with entity @s