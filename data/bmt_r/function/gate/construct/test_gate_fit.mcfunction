# Check the space around the spawn location

# VIA purple_gate_place_[direction]
# AS gate armor_stand
# AT @s
# ROTATED AS @s


# Check air was all of the right 1 by 3 by 4 volume
execute store result score @s test_gate_fit run fill ^-2 ^-1 ^-1 ^-2 ^1 ^2 void_air replace #air
fill ^-2 ^-1 ^-1 ^-2 ^1 ^2 air replace void_air
tellraw @a {"score":{"name":"@s","objective":"test_gate_fit"}}
execute if score @s test_gate_fit matches ..11 run return fail

# Check air was all of the left 1 by 3 by 4 volume
execute store result score @s test_gate_fit run fill ^2 ^-1 ^-1 ^2 ^1 ^2 void_air replace #air
fill ^2 ^-1 ^-1 ^2 ^1 ^2 air replace void_air
tellraw @a {"score":{"name":"@s","objective":"test_gate_fit"}}
execute if score @s test_gate_fit matches ..11 run return fail

# etc.
execute store result score @s test_gate_fit run fill ^-1 ^-1 ^0 ^1 ^1 ^2 void_air replace #air
fill ^-1 ^-1 ^-1 ^1 ^1 ^3 air replace void_air
tellraw @a {"score":{"name":"@s","objective":"test_gate_fit"}}
execute if score @s test_gate_fit matches ..26 run return fail

execute store result score @s test_gate_fit run fill ^-1 ^-1 ^-1 ^1 ^-1 ^-1 void_air replace #air
fill ^-1 ^-1 ^-1 ^1 ^-1 ^-1 air replace void_air
tellraw @a {"score":{"name":"@s","objective":"test_gate_fit"}}
execute if score @s test_gate_fit matches ..2 run return fail

execute store result score @s test_gate_fit run fill ^-1 ^1 ^3 ^1 ^1 ^3 void_air replace #air
fill ^-1 ^1 ^3 ^1 ^1 ^3 air replace void_air
tellraw @a {"score":{"name":"@s","objective":"test_gate_fit"}}
execute if score @s test_gate_fit matches ..2 run return fail

return 1