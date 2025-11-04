# Set states at output terminals based on input vector

# VIA gate_calculate
# AS gate_heart armor_stand
# AT @s


execute if score @s bmt_r_bits matches 1.. run function bmt_r:gate/logic/gate_write_output {terminal_type:output,index:0}
execute if score @s bmt_r_bits matches 2.. run function bmt_r:gate/logic/gate_write_output {terminal_type:output,index:1}
execute if score @s bmt_r_bits matches 3.. run function bmt_r:gate/logic/gate_write_output {terminal_type:output,index:2}
execute if score @s bmt_r_bits matches 4.. run function bmt_r:gate/logic/gate_write_output {terminal_type:output,index:3}
execute if score @s bmt_r_bits matches 5.. run function bmt_r:gate/logic/gate_write_output {terminal_type:output,index:4}
execute if score @s bmt_r_bits matches 6.. run function bmt_r:gate/logic/gate_write_output {terminal_type:output,index:5}
execute if score @s bmt_r_bits matches 7.. run function bmt_r:gate/logic/gate_write_output {terminal_type:output,index:6}
execute if score @s bmt_r_bits matches 8.. run function bmt_r:gate/logic/gate_write_output {terminal_type:output,index:7}