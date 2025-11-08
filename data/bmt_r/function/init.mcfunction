scoreboard objectives add bmt_r_global dummy
scoreboard objectives modify bmt_r_global displayautoupdate true

scoreboard players set #debug bmt_r_global 0
scoreboard players set #debug_calculation bmt_r_global 0
scoreboard players set #detect_void_air bmt_r_global 0

scoreboard players set #diegetic_sounds bmt_r_global 1
scoreboard players set #non_diegetic_sounds bmt_r_global 1

scoreboard players set #1 bmt_r_global 1
scoreboard players set #2 bmt_r_global 2
scoreboard players set #6 bmt_r_global 6
scoreboard players set #12 bmt_r_global 12

scoreboard players set #calibration bmt_r_global 0

scoreboard objectives add bmt_r_local dummy
scoreboard objectives modify bmt_r_local displayautoupdate true

scoreboard objectives add bmt_r_bits dummy
scoreboard objectives modify bmt_r_bits displayautoupdate true

scoreboard objectives add bmt_r_gate_values dummy
scoreboard objectives modify bmt_r_gate_values displayautoupdate true

scoreboard objectives add bmt_r_gate_facing dummy
scoreboard objectives modify bmt_r_gate_facing displayautoupdate true

scoreboard objectives add bmt_r_sentry_values dummy
scoreboard objectives modify bmt_r_sentry_values displayautoupdate true

scoreboard objectives add bmt_r_calibration dummy
scoreboard objectives modify bmt_r_calibration displayautoupdate true

scoreboard objectives add bmt_r_powers_of_2 dummy
scoreboard objectives modify bmt_r_powers_of_2 displayautoupdate true

scoreboard objectives add bmt_r_selected_item_slot dummy
scoreboard objectives modify bmt_r_selected_item_slot displayautoupdate true
scoreboard players set @a bmt_r_selected_item_slot -1

scoreboard objectives add bmt_r_previous_selected_item_slot dummy
scoreboard objectives modify bmt_r_previous_selected_item_slot displayautoupdate true
scoreboard players set @a bmt_r_previous_selected_item_slot -1

scoreboard players set #0 bmt_r_powers_of_2 1
scoreboard players set #1 bmt_r_powers_of_2 2
scoreboard players set #2 bmt_r_powers_of_2 4
scoreboard players set #3 bmt_r_powers_of_2 8
scoreboard players set #4 bmt_r_powers_of_2 16
scoreboard players set #5 bmt_r_powers_of_2 32
scoreboard players set #6 bmt_r_powers_of_2 64
scoreboard players set #7 bmt_r_powers_of_2 128
scoreboard players set #8 bmt_r_powers_of_2 256

data modify storage bmt_r:item_data colors set value {\
    black: {\
        color: "black",\
        hex: "8932b7",\
        color_title_case: "Black",\
        mob: armor_stand,\
    },\
    blue: {\
        color: "blue",\
        hex: "3c44a9",\
        color_title_case: "Blue",\
        mob: armor_stand,\
    },\
    brown: {\
        color: "brown",\
        hex: "825432",\
        color_title_case: "Brown",\
        mob: armor_stand,\
    },\
    cyan: {\
        color: "cyan",\
        hex: "169c9d",\
        color_title_case: "Cyan",\
        mob: armor_stand,\
    },\
    green: {\
        color: "green",\
        hex: "5d7c15",\
        color_title_case: "Green",\
        mob: armor_stand,\
    },\
    gray: {\
        color: "gray",\
        hex: "474f52",\
        color_title_case: "Gray",\
        mob: armor_stand,\
    },\
    light_blue: {\
        color: "light_blue",\
        hex: "3ab3da",\
        color_title_case: "Light Blue",\
        mob: armor_stand,\
    },\
    light_gray: {\
        color: "light_gray",\
        hex: "9c9d97",\
        color_title_case: "Light Gray",\
        mob: armor_stand,\
    },\
    lime: {\
        color: "lime",\
        hex: "80c71f",\
        color_title_case: "Lime",\
        mob: armor_stand,\
    },\
    magenta: {\
        color: "magenta",\
        hex: "c64fbd",\
        color_title_case: "Magenta",\
        mob: armor_stand,\
    },\
    orange: {\
        color: "orange",\
        hex: "f9801d",\
        color_title_case: "Orange",\
        mob: armor_stand,\
    },\
    pink: {\
        color: "pink",\
        hex: "f38caa",\
        color_title_case: "Pink",\
        mob: armor_stand,\
    },\
    purple: {\
        color: "purple",\
        hex: "8932b7",\
        color_title_case: "Purple",\
        mob: armor_stand,\
    },\
    red: {\
        color: "red",\
        hex: "b02e26",\
        color_title_case: "Red",\
        mob: armor_stand,\
    },\
    white: {\
        color: "white",\
        hex: "f9ffff",\
        color_title_case: "White",\
        mob: armor_stand,\
    },\
    yellow: {\
        color: "yellow",\
        hex: "ffd83d",\
        color_title_case: "Yellow",\
        mob: armor_stand,\
    },\
}

data modify storage bmt_r:item_data terminals set value {\
    A: {\
        terminal: "A",\
        terminal_type_title_case: "Input",\
    },\
    B: {\
        terminal: "B",\
        terminal_type_title_case: "Input",\
    },\
    Q: {\
        terminal: "Q",\
        terminal_type_title_case: "Output",\
    },\
}

data modify storage bmt_r:gate_keepers blueprints set value {\
    input: [\
        {\
            local_x: -1,\
            local_y: 0,\
            local_z: -1,\
            place_value: 1,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 2,\
            local_z: -1,\
            place_value: 2,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 4,\
            local_z: -1,\
            place_value: 4,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 6,\
            local_z: -1,\
            place_value: 8,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 8,\
            local_z: -1,\
            place_value: 16,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 10,\
            local_z: -1,\
            place_value: 32,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 12,\
            local_z: -1,\
            place_value: 64,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 14,\
            local_z: -1,\
            place_value: 128,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 0,\
            local_z: -1,\
            place_value: 256,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 2,\
            local_z: -1,\
            place_value: 512,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 4,\
            local_z: -1,\
            place_value: 1024,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 6,\
            local_z: -1,\
            place_value: 2048,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 8,\
            local_z: -1,\
            place_value: 4096,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 10,\
            local_z: -1,\
            place_value: 8192,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 12,\
            local_z: -1,\
            place_value: 16384,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 14,\
            local_z: -1,\
            place_value: -32768,\
            terminal_type: input,\
        },\
    ],\
    output: [\
        {\
            local_x: 0,\
            local_y: 0,\
            local_z: 1,\
            place_value: 1,\
            terminal_type: output,\
        },\
        {\
            local_x: 0,\
            local_y: 2,\
            local_z: 1,\
            place_value: 2,\
            terminal_type: output,\
        },\
        {\
            local_x: 0,\
            local_y: 4,\
            local_z: 1,\
            place_value: 4,\
            terminal_type: output,\
        },\
        {\
            local_x: 0,\
            local_y: 6,\
            local_z: 1,\
            place_value: 8,\
            terminal_type: output,\
        },\
        {\
            local_x: 0,\
            local_y: 8,\
            local_z: 1,\
            place_value: 16,\
            terminal_type: output,\
        },\
        {\
            local_x: 0,\
            local_y: 10,\
            local_z: 1,\
            place_value: 32,\
            terminal_type: output,\
        },\
        {\
            local_x: 0,\
            local_y: 12,\
            local_z: 1,\
            place_value: 64,\
            terminal_type: output,\
        },\
        {\
            local_x: 0,\
            local_y: 14,\
            local_z: 1,\
            place_value: 128,\
            terminal_type: output,\
        },\
    ]\
}

data modify storage bmt_r:sentry_displays blueprints set value {\
    A: [\
        {\
            local_y: 2,\
            place_value: 1,\
            terminal: A,\
        },\
        {\
            local_y: 4,\
            place_value: 2,\
            terminal: A,\
        },\
        {\
            local_y: 6,\
            place_value: 4,\
            terminal: A,\
        },\
        {\
            local_y: 8,\
            place_value: 8,\
            terminal: A,\
        },\
        {\
            local_y: 10,\
            place_value: 16,\
            terminal: A,\
        },\
        {\
            local_y: 12,\
            place_value: 32,\
            terminal: A,\
        },\
        {\
            local_y: 14,\
            place_value: 64,\
            terminal: A,\
        },\
        {\
            local_y: 16,\
            place_value: 128,\
            terminal: A,\
        },\
    ],\
    B: [\
        {\
            local_y: 2,\
            place_value: 256,\
            terminal: B,\
        },\
        {\
            local_y: 4,\
            place_value: 512,\
            terminal: B,\
        },\
        {\
            local_y: 6,\
            place_value: 1024,\
            terminal: B,\
        },\
        {\
            local_y: 8,\
            place_value: 2048,\
            terminal: B,\
        },\
        {\
            local_y: 10,\
            place_value: 4096,\
            terminal: B,\
        },\
        {\
            local_y: 12,\
            place_value: 8192,\
            terminal: B,\
        },\
        {\
            local_y: 14,\
            place_value: 16384,\
            terminal: B,\
        },\
        {\
            local_y: 16,\
            place_value: -32768,\
            terminal: B,\
        },\
    ],\
    Q: [\
        {\
            local_y: 2,\
            place_value: 1,\
            terminal: Q,\
        },\
        {\
            local_y: 4,\
            place_value: 2,\
            terminal: Q,\
        },\
        {\
            local_y: 6,\
            place_value: 4,\
            terminal: Q,\
        },\
        {\
            local_y: 8,\
            place_value: 8,\
            terminal: Q,\
        },\
        {\
            local_y: 10,\
            place_value: 16,\
            terminal: Q,\
        },\
        {\
            local_y: 12,\
            place_value: 32,\
            terminal: Q,\
        },\
        {\
            local_y: 14,\
            place_value: 64,\
            terminal: Q,\
        },\
        {\
            local_y: 16,\
            place_value: 128,\
            terminal: Q,\
        },\
    ]\
}

data modify storage bmt_r:calibration input_sets set value {\
    "1": [256, 1],\
    "2": [512, 256, 2, 1],\
    "3": [1024, 512, 256, 4, 2, 1],\
    "4": [2048, 1024, 512, 256, 8, 4, 2, 1],\
    "5": [4096, 2048, 1024, 512, 256, 16, 8, 4, 2, 1],\
    "6": [8192, 4096, 2048, 1024, 512, 256, 32, 16, 8, 4, 2, 1],\
    "7": [16384, 8192, 4096, 2048, 1024, 512, 256, 64, 32, 16, 8, 4, 2, 1],\
    "8": [-32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1]\
}