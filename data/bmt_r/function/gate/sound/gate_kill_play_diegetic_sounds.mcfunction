# Play diegetic sounds of gate kill

# VIA gate_kill_play_sounds
# AS gate_heart armor_stand
# AT @s


execute unless score #diegetic_sounds bmt_r_global matches 1 run return fail

playsound block.glass.break block @a ~ ~ ~ 1.0
playsound block.glass.break block @a ~ ~ ~ 1.0
playsound block.stone.break block @a ~ ~ ~ 1.0
playsound block.stone.break block @a ~ ~ ~ 1.0