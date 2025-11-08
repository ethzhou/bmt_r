# Cancel gate placement

# VIA gate_place_[direction]
# AS gate_heart armor_stand


function bmt_r:gate/sound/gate_place_fail_play_sounds

tellraw @p {"color":"light_purple","text":"The gate has insufficient space."}
kill
return fail