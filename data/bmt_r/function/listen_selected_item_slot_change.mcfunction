execute as @a store result score @s bmt_r_selected_item_slot run data get entity @s SelectedItemSlot
execute as @a if score @s bmt_r_selected_item_slot = @s bmt_r_previous_selected_item_slot run function #bmt_r:handle_selected_item_slot_change
execute as @a run scoreboard players operation @s bmt_r_previous_selected_item_slot = @s bmt_r_selected_item_slot