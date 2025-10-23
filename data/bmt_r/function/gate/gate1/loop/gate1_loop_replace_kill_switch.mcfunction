# Manage kill switch replacement

# AS System


# Replace kill switch
execute as @e[tag=gate_heart,type=armor_stand] at @s run function bmt_r:gate/gate1/loop/gate1_replace_kill_switch with entity @s

schedule function bmt_r:gate/gate1/loop/gate1_loop_replace_kill_switch 2s