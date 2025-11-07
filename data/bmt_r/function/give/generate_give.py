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

def write_give_gate(file):
    print(f"Writing {file.name}...")
    file.write(f'function bmt_r:give/give_gate {{bits:{b},color:"{c}"}}')
    file.close()

def write_give_sentry(file):
    print(f"Writing {file.name}...")
    file.write(f'function bmt_r:give/give_sentry {{bits:{b},color:"{c}",terminal:"{t.upper()}"}}')
    file.close()

for c in COLORS:
    for b in range(1, 9):
        try:
            with open(f"give_{c}_gate{b}.mcfunction", "x") as file:
                write_give_gate(file)
        except FileExistsError:
            with open(f"give_{c}_gate{b}.mcfunction", "w") as file:
                write_give_gate(file)
        for t in TERMINALS:
            try:
                with open(f"give_{c}_sentry{b}{t}.mcfunction", "x") as file:
                    write_give_sentry(file)
            except FileExistsError:
                with open(f"give_{c}_sentry{b}{t}.mcfunction", "w") as file:
                    write_give_sentry(file)
