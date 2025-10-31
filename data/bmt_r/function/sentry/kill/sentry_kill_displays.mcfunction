# Kill sentry block displays
# { bits:, color:, terminal:, }

# VIA sentry_spawn_handle
# AS sentry_heart armor_stand
# AT @s


$scoreboard players set #bits bmt_r_local $(bits)

$execute if score #bits bmt_r_local matches 1.. run function bmt_r:sentry/kill/sentry_kill_display {terminal:$(terminal),index:0}
$execute if score #bits bmt_r_local matches 2.. run function bmt_r:sentry/kill/sentry_kill_display {terminal:$(terminal),index:1}
$execute if score #bits bmt_r_local matches 3.. run function bmt_r:sentry/kill/sentry_kill_display {terminal:$(terminal),index:2}
$execute if score #bits bmt_r_local matches 4.. run function bmt_r:sentry/kill/sentry_kill_display {terminal:$(terminal),index:3}
$execute if score #bits bmt_r_local matches 5.. run function bmt_r:sentry/kill/sentry_kill_display {terminal:$(terminal),index:4}
$execute if score #bits bmt_r_local matches 6.. run function bmt_r:sentry/kill/sentry_kill_display {terminal:$(terminal),index:5}
$execute if score #bits bmt_r_local matches 7.. run function bmt_r:sentry/kill/sentry_kill_display {terminal:$(terminal),index:6}
$execute if score #bits bmt_r_local matches 8.. run function bmt_r:sentry/kill/sentry_kill_display {terminal:$(terminal),index:7}