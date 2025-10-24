# Play non-diegetic sounds of gate kill

# VIA gate1_kill_play_sounds
# AS gate_heart armor_stand
# AT @s


execute unless score #non_diegetic_sounds bmt_r_global matches 1 run return fail

# G
playsound block.note_block.bell block @a ~ ~ ~ 1.0 0.530
# G-sharp
playsound block.note_block.bell block @a ~ ~ ~ 1.0 0.561
# F-sharp
playsound block.note_block.bell block @a ~ ~ ~ 0.8 1.0