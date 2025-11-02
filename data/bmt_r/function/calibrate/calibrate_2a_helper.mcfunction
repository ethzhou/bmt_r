# Check outputs and append the input vector to each output keepers fiber list
# { bits:, color:, input_vector:, place_value:, }

# VIA calibrate_2a WITH storage bmt_r:calibration parameters


$execute as @e[limit=1,tag=sentry_display,tag=sentry$(bits)_display,tag=sentryQ_display,tag=$(color)_sentry_display,type=block_display] if score @s bmt_r_sentry_values matches $(place_value) at @s if block ~ ~ ~ redstone_lamp[lit=true] run data modify storage bmt_r:calibration fibers.$(color)_gate$(bits).$(place_value) append value {key:$(input_vector)}