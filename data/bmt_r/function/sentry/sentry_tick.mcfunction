# Manage sentry system

# AS System


# Handle new sentry spawns
execute as @e[tag=sentry_germ,type=armor_stand] at @s summon minecraft:armor_stand run function bmt_r:sentry/construct/sentry_spawn_handle with entity @n[tag=sentry_germ,type=armor_stand] data

# Update sentry
execute as @e[tag=sentry_heart] at @s run function #bmt_r:sentry_update with entity @s data

# Run calibration
function bmt_r:calibrate/calibrate_manage_state