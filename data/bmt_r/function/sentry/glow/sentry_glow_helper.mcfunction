# Effect corresponding sentry with glow
# { "bits":, "color":, "terminal":, }

# VIA sentry_glow
# AS player


$execute as @e[tag=sentry$(bits)_display,tag=sentry$(terminal)_display,tag=$(color)_sentry_display] run data modify entity @s Glowing set value true
$execute as @e[tag=sentry$(bits)_base,tag=sentry$(terminal)_base,tag=$(color)_sentry_base] run data modify entity @s Glowing set value true