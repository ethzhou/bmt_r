# { bits:, color:, }


$data modify storage bmt_r:local bits set value $(bits)
$data modify storage bmt_r:local {} merge from storage bmt_r:item_data colors.$(color)

function bmt_r:give/give_gate_helper with storage bmt_r:local