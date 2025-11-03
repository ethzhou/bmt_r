scoreboard objectives add bmt_r_global dummy
scoreboard objectives modify bmt_r_global displayautoupdate true

scoreboard players set #debug bmt_r_global 0
scoreboard players set #debug_calculation bmt_r_global 0
scoreboard players set #detect_void_air bmt_r_global 0

scoreboard players set #diegetic_sounds bmt_r_global 1
scoreboard players set #non_diegetic_sounds bmt_r_global 1

scoreboard players set #1 bmt_r_global 1
scoreboard players set #2 bmt_r_global 2

scoreboard players set #calibration bmt_r_global 0

scoreboard objectives add bmt_r_local dummy
scoreboard objectives modify bmt_r_local displayautoupdate true

# TODO refactor under bmt_r_local objective
scoreboard objectives add test_gate_fit dummy
scoreboard objectives modify test_gate_fit displayautoupdate true

# TODO list gate hearts under this objective according to their number of bits
scoreboard objectives add bmt_r_gate_bits dummy
scoreboard objectives modify bmt_r_gate_bits displayautoupdate true

scoreboard objectives add bmt_r_gate_inputs dummy
scoreboard objectives modify bmt_r_gate_inputs displayautoupdate true

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

data modify storage bmt_r:gate_keepers blueprints set value {\
    input: [\
        {\
            local_x: -1,\
            local_y: 0,\
            local_z: 0,\
            place_value: 1,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 2,\
            local_z: 0,\
            place_value: 2,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 4,\
            local_z: 0,\
            place_value: 4,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 6,\
            local_z: 0,\
            place_value: 8,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 8,\
            local_z: 0,\
            place_value: 16,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 10,\
            local_z: 0,\
            place_value: 32,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 12,\
            local_z: 0,\
            place_value: 64,\
            terminal_type: input,\
        },\
        {\
            local_x: -1,\
            local_y: 14,\
            local_z: 0,\
            place_value: 128,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 0,\
            local_z: 0,\
            place_value: 256,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 2,\
            local_z: 0,\
            place_value: 512,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 4,\
            local_z: 0,\
            place_value: 1024,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 6,\
            local_z: 0,\
            place_value: 2048,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 8,\
            local_z: 0,\
            place_value: 4096,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 10,\
            local_z: 0,\
            place_value: 8192,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 12,\
            local_z: 0,\
            place_value: 16384,\
            terminal_type: input,\
        },\
        {\
            local_x: 1,\
            local_y: 14,\
            local_z: 0,\
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
    "1": [1, 256],\
    "2": [1, 2, 256, 512],\
    "3": [],\
    "4": [],\
    "5": [],\
    "6": [],\
    "7": [],\
    "8": [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, -32768]\
}