# Manage gate system

# AS System


# Handle new gate spawns
execute as @e[tag=gate_germ,type=armor_stand] at @s summon minecraft:armor_stand run function bmt_r:gate/construct/gate_spawn_handle with entity @n[tag=gate_germ,type=armor_stand] data

# Update gates
execute as @e[tag=gate_heart,tag=gate1] at @s run function #bmt_r:gate_update with entity @s