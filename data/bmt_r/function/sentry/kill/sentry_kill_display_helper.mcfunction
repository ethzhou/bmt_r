# Kill block display according to blueprints
# { local_y:, place_value:, terminal:, }

# VIA sentry_kill_display
# AS sentry_heart armor_stand
# AT ~ ~.4 ~


# $function bmt_r:util/debug/debug {command:'execute positioned ~ ~$(local_y) ~ unless entity @n[distance=..0.5,tag=sentry_display,type=block_display] run tellraw @a {"color":"gold","text":"warning: no display found during kill"}'}

$execute positioned ~ ~$(local_y) ~ run return run kill @n[distance=..0.5,tag=sentry_display,type=block_display]