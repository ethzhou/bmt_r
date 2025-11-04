# Place the sentry

# VIA sentry_spawn_handle
# AS sentry_heart armor_stand
# AT @s


execute store result score @s test_gate_fit rotated as @s run function bmt_r:sentry/construct/sentry_test_fit
execute if score @s test_gate_fit matches 0 run return run function bmt_r:sentry/construct/sentry_place_fail

$setblock ~-0.5 ~ ~-0.5 $(color)_stained_glass

# Summon entities

function bmt_r:sentry/construct/sentry_summon_base with entity @s data
function bmt_r:sentry/construct/sentry_summon_displays with entity @s data