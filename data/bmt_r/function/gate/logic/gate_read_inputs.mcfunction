# Aggregate input vector from input terminals

# VIA gate_calculate
# AS gate_heart armor_stand
# AT @s


execute if score @s bmt_r_bits matches 1.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:0}
execute if score @s bmt_r_bits matches 1.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:8}
execute if score @s bmt_r_bits matches 2.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:1}
execute if score @s bmt_r_bits matches 2.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:9}
execute if score @s bmt_r_bits matches 3.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:2}
execute if score @s bmt_r_bits matches 3.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:10}
execute if score @s bmt_r_bits matches 4.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:3}
execute if score @s bmt_r_bits matches 4.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:11}
execute if score @s bmt_r_bits matches 5.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:4}
execute if score @s bmt_r_bits matches 5.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:12}
execute if score @s bmt_r_bits matches 6.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:5}
execute if score @s bmt_r_bits matches 6.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:13}
execute if score @s bmt_r_bits matches 7.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:6}
execute if score @s bmt_r_bits matches 7.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:14}
execute if score @s bmt_r_bits matches 8.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:7}
execute if score @s bmt_r_bits matches 8.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:15}