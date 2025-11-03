# Effect sentries with glow when corresponding spawn egg is held

# VIA listen_selected_item_slot_change
# AS player


function bmt_r:sentry/glow/sentry_glow_clear
execute as @a if entity @s[nbt={SelectedItem:{"components":{"minecraft:custom_data":{"sentry":true}}}}] run return run function bmt_r:sentry/glow/sentry_glow_helper with entity @s SelectedItem.components.minecraft:custom_data
