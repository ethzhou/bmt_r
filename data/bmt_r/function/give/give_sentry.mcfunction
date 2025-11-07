# { bits:, color:, color_title_case:, hex:, mob:, terminal:, terminal_type_title_case:, }


$data modify storage bmt_r:local bits set value $(bits)
$data modify storage bmt_r:local {} merge from storage bmt_r:item_data colors.$(color)
$data modify storage bmt_r:local {} merge from storage bmt_r:item_data terminals.$(terminal)

function bmt_r:give/give_sentry_helper with storage bmt_r:local