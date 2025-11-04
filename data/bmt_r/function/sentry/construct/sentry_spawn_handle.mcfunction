# Handle spawn of sentry germ
# { bits:, color:, terminal:, }

# VIA sentry_tick
# AS sentry_heart armor_stand


kill @n[tag=sentry_germ,type=endermite]

$execute as @e[tag=sentry_heart,tag=sentry$(bits),tag=sentry$(terminal),tag=$(color)_sentry,type=armor_stand] at @s run function bmt_r:sentry/kill/sentry_kill

$data modify entity @s Tags set value ["sentry_heart","sentry$(bits)","sentry$(terminal)","$(color)_sentry"]
$data modify entity @s data set value {color:$(color),bits:$(bits),terminal:$(terminal)}
data modify entity @s NoAI set value true
data modify entity @s NoGravity set value true
data modify entity @s Invisible set value true

$scoreboard players set @s bmt_r_bits $(bits)

tp ~ ~ ~

# Place the sentry
execute at @s run function bmt_r:sentry/construct/sentry_place with entity @s data