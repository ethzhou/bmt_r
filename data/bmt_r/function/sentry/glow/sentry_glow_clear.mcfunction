# Effect corresponding sentry with glow
# { "bits":, "color":, "terminal":, }

# VIA sentry_glow
# AS player


execute as @e[tag=sentry_display,type=block_display] run data modify entity @s Glowing set value false
execute as @e[tag=sentry_base,type=block_display] run data modify entity @s Glowing set value false