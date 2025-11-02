# Manage the calibration state machine specifed in calibration.txt

# VIA sentry_tick


execute if score #calibration bmt_r_calibration matches 0 run return fail
execute if score #calibration bmt_r_calibration matches 2 run return run function bmt_r:calibrate/calibrate_2a
execute if score #calibration bmt_r_calibration matches 3 run return run function bmt_r:calibrate/calibrate_3