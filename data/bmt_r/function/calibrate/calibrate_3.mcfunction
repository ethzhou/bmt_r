# Calibration State 3 - Delay read to allow redstone circuit propagation before recursive base case

# VIA calibrate


scoreboard players remove #sleep bmt_r_calibration 1
execute if score #sleep bmt_r_calibration matches ..1 run return run scoreboard players set #calibration bmt_r_calibration 2