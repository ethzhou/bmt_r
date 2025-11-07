# { bits:, color:, color_title_case:, hex:, mob:, }

# VIA give_gate


$give @s allay_spawn_egg[custom_data={"gate":true,"bits":$(bits),"color":"$(color)"},enchantment_glint_override=true,item_name={"color":"#$(hex)","italic":true,"text":"$(bits)-Bit $(color_title_case) Gate"},entity_data={id:"minecraft:$(mob)",data:{bits:$(bits),color:$(color)},NoAI:1b,Invisible:1b,Tags:["gate_germ"],CustomName:"$(color)_gate$(bits)"}] 1