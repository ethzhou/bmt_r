# Cancel sentry placement

# VIA sentry_place
# AS gate_heart armor_stand


function bmt_r:sentry/sound/sentry_place_fail_play_sounds

tellraw @p {"color":"light_purple","text":"The sentry has insufficient space."}
kill
return fail