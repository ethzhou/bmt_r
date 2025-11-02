# Transition state machine to State 3

# VIA calibrate_2b


# This determines the propagation delay of the circuit underlying the gate
scoreboard players set #sleep bmt_r_calibration 6

scoreboard players set #calibration bmt_r_calibration 3
function bmt_r:util/debug/debug {command:'tellraw @a {"color":"yellow","text":"Allow propagation... (3)"}'}