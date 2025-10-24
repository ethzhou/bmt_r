# Manage gate system

# AS System


# Handle new gate spawns
execute as @e[tag=gate_germ,tag=purple_gate_germ] at @s summon minecraft:armor_stand run function bmt_r:gate/gate1/construct/gate1_spawn_handle {color:purple}

# Update gates
execute as @e[tag=gate_heart] at @s run function #bmt_r:gate_update