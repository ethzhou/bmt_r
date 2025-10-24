# Play sounds at gate place

# VIA gate_place_[direction]
# AS gate_heart armor_stand
# AT @s


execute unless score #non_diegetic_sounds bmt_r_global matches 1 run return fail

# A
playsound block.note_block.chime block @a ~ ~ ~ 1.0 0.297
# E
playsound block.note_block.chime block @a ~ ~ ~ 1.0 0.445
# G-sharp
playsound block.note_block.chime block @a ~ ~ ~ 1.0 0.561
# B
playsound block.note_block.chime block @a ~ ~ ~ 1.0 0.667
# C-sharp
playsound block.note_block.chime block @a ~ ~ ~ 1.0 0.749
# G-sharp
playsound block.note_block.chime block @a ~ ~ ~ 1.0 1.122