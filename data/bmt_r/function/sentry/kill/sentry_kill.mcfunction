# Remove all components of the sentry from the world

# AS sentry_heart armor_stand
# AT @s


setblock ~ ~ ~ air destroy

# Play sounds

function bmt_r:sentry/kill/sentry_kill_play_sounds with entity @s data

# Kill entities

function bmt_r:sentry/kill/sentry_kill_base with entity @s data
function bmt_r:sentry/kill/sentry_kill_displays with entity @s data
kill