# Remove all components of the sentry from the world

# AS sentry_heart armor_stand
# AT @s


# TODO
# delete components







setblock ~ ~ ~ air destroy

# Play sounds

function bmt_r:sentry/kill/sentry_kill_play_sounds with entity @s data

# Kill entities

execute positioned ~-.5 ~ ~-.5 run kill @n[tag=sentry_base,type=block_display]
function bmt_r:sentry/kill/sentry_kill_displays with entity @s data
kill