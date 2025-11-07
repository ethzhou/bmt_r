FUNCTION_DIR = "data/bmt_r/function/"

COLORS = [
    "black",
    "blue",
    "brown",
    "cyan",
    "green",
    "gray",
    "light_blue",
    "light_gray",
    "lime",
    "magenta",
    "orange",
    "pink",
    "purple",
    "red",
    "white",
    "yellow",
]

TERMINALS = ["a", "b", "q"]

def write_and_close(file, content):
    print(f"Writing {file.name}...")
    file.write(content)
    file.close()

def write_give_gate(file):
    write_and_close(file, f'function bmt_r:give/give_gate {{bits:{b},color:"{c}"}}')

def write_give_sentry(file):
    write_and_close(file, f'function bmt_r:give/give_sentry {{bits:{b},color:"{c}",terminal:"{t.upper()}"}}')

def write_calibrate_gate(file):
    write_and_close(file, f'function bmt_r:calibrate/calibrate {{bits:{b},color:"{c}"}}')

for c in COLORS:
    for b in range(1, 9):
        try:
            with open(f"{FUNCTION_DIR}util/give/give_{c}_gate{b}.mcfunction", "x") as file:
                write_give_gate(file)
        except FileExistsError:
            with open(f"{FUNCTION_DIR}util/give/give_{c}_gate{b}.mcfunction", "w") as file:
                write_give_gate(file)
        for t in TERMINALS:
            try:
                with open(f"{FUNCTION_DIR}util/give/give_{c}_sentry{b}{t}.mcfunction", "x") as file:
                    write_give_sentry(file)
            except FileExistsError:
                with open(f"{FUNCTION_DIR}util/give/give_{c}_sentry{b}{t}.mcfunction", "w") as file:
                    write_give_sentry(file)
        try:
            with open(f"{FUNCTION_DIR}util/calibrate/calibrate_{c}_gate{b}.mcfunction", "x") as file:
                write_calibrate_gate(file)
        except FileExistsError:
            with open(f"{FUNCTION_DIR}util/calibrate/calibrate_{c}_gate{b}.mcfunction", "w") as file:
                write_calibrate_gate(file)
