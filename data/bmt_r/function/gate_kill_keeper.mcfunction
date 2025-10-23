# Summon keeper armor stand at the specified position
# { terminal_type:, index:, }

# VIA gate[n]_kill_keepers
# AS gate armor_stand
# AT gate armor_stand


$function bmt_r:gate_kill_keeper_helper with storage bmt_r:gate_keepers blueprints.$(terminal_type)[$(index)]