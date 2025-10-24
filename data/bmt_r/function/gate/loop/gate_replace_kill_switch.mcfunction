# Replace kill switch
# { bits:, }

# VIA gate_loop_replace_kill_switch
# AS gate_heart armor_stand


function bmt_r:util/store_pos {resource_location:"bmt_r:local"}
$data modify storage bmt_r:local bits set value $(bits)
$function bmt_r:gate/gate$(bits)/gate$(bits)_replace_kill_switch_helper with storage bmt_r:local