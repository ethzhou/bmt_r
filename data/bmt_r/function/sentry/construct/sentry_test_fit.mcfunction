# Check the space around the spawn location

# VIA sentry_place_[direction]
# AS gate_heart armor_stand
# AT @s

# Check air was all of the main volume of the gate
execute store result score @s test_gate_fit run fill ~ ~ ~ ~ ~ ~ void_air replace #air
fill ~ ~ ~ ~ ~ ~ air replace void_air
function bmt_r:util/debug/debug {command:'tellraw @a {"score":{"name":"@s","objective":"test_gate_fit"}}'}
execute if score @s test_gate_fit matches 0 run return fail

return 1