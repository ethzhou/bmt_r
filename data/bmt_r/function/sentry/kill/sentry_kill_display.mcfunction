# Kill block display at specified position
# { index:, }

# VIA sentry_kill_displays
# AS sentry_heart armor_stand
# AT @s


$execute positioned ~ ~.4 ~ run function bmt_r:sentry/kill/sentry_kill_display_helper with storage bmt_r:sentry_displays blueprints.$(terminal)[$(index)]