# Summon keeper armor stand at the specified position
# { terminal_type:, index:, }

# VIA gate[n]_summon_keepers
# AS gate_heart armor_stand
# AT @s


$execute summon armor_stand run function bmt_r:gate/gate_summon_keeper_helper with storage bmt_r:gate_keepers blueprints.$(terminal_type)[$(index)]