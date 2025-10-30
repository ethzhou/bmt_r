# Place the sentry
# { bits:, color:, terminal:, }

# VIA sentry_spawn_handle
# AS sentry_heart armor_stand
# AT @s


execute at @s run summon minecraft:block_display ~-0.5 ~ ~-0.5 {block_state:{Name:beacon},Tags:["sentry_base"]}
$setblock ~-0.5 ~ ~-0.5 $(color)_stained_glass

# Summon displays

function bmt_r:sentry/construct/sentry_summon_displays with entity @s data