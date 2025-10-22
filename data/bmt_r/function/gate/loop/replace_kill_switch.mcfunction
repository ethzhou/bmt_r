# CALLER armor_stand

data modify storage bmt_r:temp_gate_position x set from entity @s Pos[0]
data modify storage bmt_r:temp_gate_position y set from entity @s Pos[1]
data modify storage bmt_r:temp_gate_position z set from entity @s Pos[2]
function bmt_r:gate/loop/replace_kill_switch_helper with storage bmt_r:temp_gate_position