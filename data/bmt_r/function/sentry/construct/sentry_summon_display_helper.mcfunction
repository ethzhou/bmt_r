# Help summon sentry display with the specified sentry blueprint
# { bits:, color:, local_y:, place_value:, terminal:, }

# VIA sentry_summon_display
# AS sentry_display block_display
# AT sentry_heart armor_stand


$function bmt_r:util/debug/debug {command:'say $(bits) $(color) ~ ~$(local_y) ~ $(place_value) $(terminal)'}

$data modify entity @s block_state set value {Name:$(color)_stained_glass}
$data modify entity @s Tags set value ["sentry_display","sentry$(bits)_display","sentry$(terminal)_display","$(color)_sentry_display"]

# Rotate the main diagonal (between (0, 0, 0) and (1, 1, 1)) onto y-axis
data modify entity @s transformation merge value {right_rotation:[-0.279848,0.115917,0.364705,0.880476],scale:[.2,.2,.2]}

$tp ~ ~$(local_y) ~

# Center within block grid
execute at @s run tp ~ ~.3268 ~

# Set place_value
$scoreboard players set @s bmt_r_sentry_values $(place_value)