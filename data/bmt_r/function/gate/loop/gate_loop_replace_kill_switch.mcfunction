# Manage kill switch replacement

# AS System


# Replace kill switch
execute as @e[tag=gate,type=armor_stand] at @s run function bmt_r:gate/loop/replace_kill_switch with entity @s

schedule function bmt_r:gate/loop/gate_loop_replace_kill_switch 2s