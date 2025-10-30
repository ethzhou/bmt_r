# Manage sentry system

# AS System


# Handle new sentry spawns
execute as @e[tag=sentry_germ,tag=sentry1_germ,tag=sentryA_germ,tag=purple_sentry_germ] at @s summon minecraft:armor_stand run function bmt_r:sentry/construct/sentry_spawn_handle {color:purple,bits:1,terminal:A}
execute as @e[tag=sentry_germ,tag=sentry1_germ,tag=sentryB_germ,tag=purple_sentry_germ] at @s summon minecraft:armor_stand run function bmt_r:sentry/construct/sentry_spawn_handle {color:purple,bits:1,terminal:B}
execute as @e[tag=sentry_germ,tag=sentry1_germ,tag=sentryQ_germ,tag=purple_sentry_germ] at @s summon minecraft:armor_stand run function bmt_r:sentry/construct/sentry_spawn_handle {color:purple,bits:1,terminal:Q}
execute as @e[tag=sentry_germ,tag=sentry8_germ,tag=sentryA_germ,tag=purple_sentry_germ] at @s summon minecraft:armor_stand run function bmt_r:sentry/construct/sentry_spawn_handle {color:purple,bits:8,terminal:A}
execute as @e[tag=sentry_germ,tag=sentry8_germ,tag=sentryB_germ,tag=purple_sentry_germ] at @s summon minecraft:armor_stand run function bmt_r:sentry/construct/sentry_spawn_handle {color:purple,bits:8,terminal:B}
execute as @e[tag=sentry_germ,tag=sentry8_germ,tag=sentryQ_germ,tag=purple_sentry_germ] at @s summon minecraft:armor_stand run function bmt_r:sentry/construct/sentry_spawn_handle {color:purple,bits:8,terminal:Q}

# Update sentry
execute as @e[tag=gate_heart,tag=gate1] at @s run function #bmt_r:sentry_update with entity @s