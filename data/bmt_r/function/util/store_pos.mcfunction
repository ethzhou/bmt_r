# Write executor position to command storage at resource_location
# { resource_location:, }

$data modify storage $(resource_location) x set from entity @s Pos[0]
$data modify storage $(resource_location) y set from entity @s Pos[1]
$data modify storage $(resource_location) z set from entity @s Pos[2]