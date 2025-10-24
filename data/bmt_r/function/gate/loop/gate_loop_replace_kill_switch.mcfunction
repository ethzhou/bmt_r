# Manage kill switch replacement

# AS System


# Replace kill switch
execute as @e[tag=gate_heart,tag=gate1,type=armor_stand] at @s run function bmt_r:gate/loop/gate_replace_kill_switch {bits:1}
execute as @e[tag=gate_heart,tag=gate8,type=armor_stand] at @s run function bmt_r:gate/loop/gate_replace_kill_switch {bits:8}

schedule function bmt_r:gate/loop/gate_loop_replace_kill_switch 2s