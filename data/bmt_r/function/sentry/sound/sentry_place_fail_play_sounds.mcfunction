# Play sounds at failed sentry place

# VIA gate_place_fail
# AS gate_heart armor_stand
# AT @s


execute unless score #non_diegetic_sounds bmt_r_global matches 1 run return fail

# F-sharp
playsound block.note_block.bell block @a ~ ~ ~ 1.0 0.5
# G
playsound block.note_block.bell block @a ~ ~ ~ 1.0 0.530