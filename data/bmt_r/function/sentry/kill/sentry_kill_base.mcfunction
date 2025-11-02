# Kill sentry base block display

# VIA sentry_kill WITH entity @s data
# AS sentry_heart armor_stand
# AT @s


function bmt_r:util/debug/debug {command:'execute positioned ~-.5 ~ ~-.5 run tellraw @a {"color":"gold","text":"warning: no base found during kill"}'}

execute positioned ~-.5 ~ ~-.5 run kill @n[distance=..0.1,tag=sentry_base,type=block_display]