# Continue placing the gate after selecting cardinal direction

# VIA gate_place_[direction]
# AS gate_heart armor_stand
# AT @s
# ROTATED 0


# Replace color

function bmt_r:gate/construct/gate_color with entity @s data

# Play sounds

function bmt_r:gate/sound/gate_place_play_sounds

# Summon keepers

execute rotated as @s run function bmt_r:gate/construct/gate_summon_keepers with entity @s data