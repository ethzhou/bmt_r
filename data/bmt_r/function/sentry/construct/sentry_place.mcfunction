# Place the sentry
# { bits:, color:, terminal:, }

# VIA sentry_spawn_handle
# AS sentry_heart armor_stand
# AT @s


$setblock ~-0.5 ~ ~-0.5 $(color)_stained_glass

# Summon entities

function bmt_r:sentry/construct/sentry_summon_base
function bmt_r:sentry/construct/sentry_summon_displays with entity @s data