# Remove all components of the gate from the world
# { bits:, }

# AS gate_heart armor_stand
# AT @s


# Place gate[n]_null by cardinal direction

# N
$execute if entity @s[y_rotation=135..180] run place template bmt_r:gate$(bits)_null ^-2 ^-1 ^-1 180
$execute if entity @s[y_rotation=-180..-135] unless entity @s[y_rotation=180] unless entity @s[y_rotation=-135] run place template bmt_r:gate$(bits)_null ^-2 ^-1 ^-1 180

# E
$execute if entity @s[y_rotation=-135..-45] unless entity @s[y_rotation=-45] run place template bmt_r:gate$(bits)_null ^-2 ^-1 ^-1 counterclockwise_90

# S
$execute if entity @s[y_rotation=-45..45] unless entity @s[y_rotation=45] run place template bmt_r:gate$(bits)_null ^-2 ^-1 ^-1

# W
$execute if entity @s[y_rotation=45..135] unless entity @s[y_rotation=135] run place template bmt_r:gate$(bits)_null ^-2 ^-1 ^-1 clockwise_90

# Play sounds

function bmt_r:gate/kill/gate_kill_play_sounds with entity @s data

# Kill armor stands

kill
function bmt_r:gate/kill/gate_kill_keepers with entity @s data