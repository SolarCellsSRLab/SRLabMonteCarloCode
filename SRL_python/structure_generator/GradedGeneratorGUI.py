import tkinter as tk
from tkinter import ttk

import GradedGenerator as gg

app = tk.Tk()
app.geometry('800x800')
app.configure(bg='blue')

labelTop = tk.Label(app,
                    text="Choose acceptor: donor ratio used by each of the 12 layers")
labelTop.grid(column=0, row=0)

values = ["100% acceptor", "3:1 (acceptor : donor)",
          "2:1 (acceptor : donor)", "1:1 (acceptor : donor) ",
          "1:2 (acceptor : donor)", "1:3 (acceptor : donor)",
          "100% donor"
          ]

layer0 = ttk.Combobox(app, values=values, state="readonly")
layer0.grid(column=0, row=1)
layer0.current(0)

layer1 = ttk.Combobox(app, values=values, state="readonly")
layer1.grid(column=0, row=2)
layer1.current(0)

layer2 = ttk.Combobox(app, values=values, state="readonly")
layer2.grid(column=0, row=3)
layer2.current(0)

layer3 = ttk.Combobox(app, values=values, state="readonly")
layer3.grid(column=0, row=4)
layer3.current(0)

layer4 = ttk.Combobox(app, values=values, state="readonly")
layer4.grid(column=0, row=5)
layer4.current(0)

layer5 = ttk.Combobox(app, values=values, state="readonly")
layer5.grid(column=0, row=6)
layer5.current(0)

layer6 = ttk.Combobox(app, values=values, state="readonly")
layer6.grid(column=0, row=7)
layer6.current(0)

layer7 = ttk.Combobox(app, values=values, state="readonly")
layer7.grid(column=0, row=8)
layer7.current(0)

layer8 = ttk.Combobox(app, values=values, state="readonly")
layer8.grid(column=0, row=9)
layer8.current(0)

layer9 = ttk.Combobox(app, values=values, state="readonly")
layer9.grid(column=0, row=10)
layer9.current(0)

layer10 = ttk.Combobox(app, values=values, state="readonly")
layer10.grid(column=0, row=11)
layer10.current(0)

layer11 = ttk.Combobox(app, values=values, state="readonly")
layer11.grid(column=0, row=12)
layer11.current(0)


def generateStructure():
    ratio_and_layer={
        "l0":layer0.current(),
        "l1":layer1.current(),
        "l2":layer2.current(),
        "l3":layer3.current(),
        "l4":layer4.current(),
        "l5":layer5.current(),
        "l6":layer6.current(),
        "l7":layer7.current(),
        "l8":layer8.current(),
        "l9":layer9.current(),
        "l10":layer10.current(),
        "l11":layer11.current()
    }

    ## the first process
    structure=gg(3,ratio_and_layer)
    structure.generateStructure()


actionBtn = tk.Button(app, text="Generate Structure", width=15, height=2, command=generateStructure, fg='red',bg='green')
actionBtn.grid(column=0, row=13)


print(layer1.current(), layer1.get())

app.mainloop()
