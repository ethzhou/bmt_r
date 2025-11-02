# Summon sentry display at the specified position
# { terminal:, index:, }

# VIA sentry_place
# AS sentry_heart armor_stand
# AT @s


$data modify storage bmt_r:sentry_displays blueprints.$(terminal)[$(index)] merge from entity @s data
$execute summon block_display run function bmt_r:sentry/construct/sentry_summon_display_helper with storage bmt_r:sentry_displays blueprints.$(terminal)[$(index)]