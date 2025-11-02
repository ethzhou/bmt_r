# Aggregate input vector from input terminals
# { bits:, }

# VIA gate_calculate
# AS gate_heart armor_stand
# AT @s


$scoreboard players set #bits bmt_r_local $(bits)

execute if score #bits bmt_r_local matches 1.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:0}
execute if score #bits bmt_r_local matches 1.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:8}
execute if score #bits bmt_r_local matches 2.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:1}
execute if score #bits bmt_r_local matches 2.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:9}
execute if score #bits bmt_r_local matches 3.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:2}
execute if score #bits bmt_r_local matches 3.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:10}
execute if score #bits bmt_r_local matches 4.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:3}
execute if score #bits bmt_r_local matches 4.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:11}
execute if score #bits bmt_r_local matches 5.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:4}
execute if score #bits bmt_r_local matches 5.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:12}
execute if score #bits bmt_r_local matches 6.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:5}
execute if score #bits bmt_r_local matches 6.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:13}
execute if score #bits bmt_r_local matches 7.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:6}
execute if score #bits bmt_r_local matches 7.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:14}
execute if score #bits bmt_r_local matches 8.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:7}
execute if score #bits bmt_r_local matches 8.. run function bmt_r:gate/logic/gate_read_input {terminal_type:input,index:15}