# Replace colored blocks with correct color
# { color:, gate_y1:, }

# VIA gate_place_continue
# AS gate_heart armor_stand
# AT @s


$fill ^-1 ^-1 ^-1 ^1 ^$(y) ^1 $(color)_stained_glass_pane[south=true,east=true] replace glass_pane[south=true,east=true]
$fill ^-1 ^-1 ^-1 ^1 ^$(y) ^1 $(color)_stained_glass_pane[south=true,west=true] replace glass_pane[south=true,west=true]
$fill ^-1 ^-1 ^-1 ^1 ^$(y) ^1 $(color)_stained_glass_pane[north=true,west=true] replace glass_pane[north=true,west=true]
$fill ^-1 ^-1 ^-1 ^1 ^$(y) ^1 $(color)_stained_glass_pane[north=true,east=true] replace glass_pane[north=true,east=true]

$fill ^-1 ^-1 ^-1 ^1 ^$(y) ^1 $(color)_stained_glass_pane replace glass_pane

$fill ^-1 ^-1 ^-1 ^1 ^$(y) ^1 $(color)_carpet replace glass