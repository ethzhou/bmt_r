scoreboard objectives add bmt_r_global dummy
scoreboard objectives modify bmt_r_global displayautoupdate true

scoreboard players set #debug bmt_r_global 0
scoreboard players set #detect_void_air bmt_r_global 0
scoreboard players set #diegetic_sounds bmt_r_global 1
scoreboard players set #non_diegetic_sounds bmt_r_global 1

scoreboard players set #1 bmt_r_global 1
scoreboard players set #2 bmt_r_global 2

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

scoreboard objectives add bmt_r_sentry_values dummy
scoreboard objectives modify bmt_r_sentry_values displayautoupdate true

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