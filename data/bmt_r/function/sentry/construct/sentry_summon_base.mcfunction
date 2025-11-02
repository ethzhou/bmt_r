# Summon sentry base block display

# VIA sentry_place WITH entity @s data
# AS sentry_heart armor_stand
# AT @s


execute at @s run summon minecraft:block_display ~-0.5 ~ ~-0.5 {block_state:{Name:beacon},Tags:["sentry_base"]}