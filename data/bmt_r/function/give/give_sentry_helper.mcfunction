# { bits:, color:, color_title_case:, hex:, mob:, terminal:, terminal_type_title_case:, }

# VIA give_sentry


$give @s silverfish_spawn_egg[custom_data={"sentry":true,"bits":$(bits),"color":"$(color)","terminal":"$(terminal)"},custom_model_data={strings:["sentry","$(bits)","$(terminal)"],colors:[0x$(hex)]},enchantment_glint_override=true,item_name={"color":"#$(hex)","font":"bmt_r:raleway-regular","shadow_color":0x80ffffff,"text":"$(bits)-Bit $(terminal_type_title_case) Sentry $(terminal)","underlined":true},entity_data={id:"minecraft:$(mob)",data:{bits:$(bits),color:$(color),terminal:$(terminal)},NoAI:1b,Tags:["sentry_germ"],CustomName:"$(color)_sentry$(bits)$(terminal)"}] 1