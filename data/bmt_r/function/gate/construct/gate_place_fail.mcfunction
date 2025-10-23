# Cancel gate placement

# VIA purple_gate_place_[direction]
# AS gate_heart armor_stand


tellraw @p {"color":"light_purple","text":"The gate has insufficient space."}
kill
return fail