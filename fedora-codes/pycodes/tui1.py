import TermTk as tk

root = tk.TTk(layout=tk.TTkVBoxLayout())

tk.TTkButton(parent=root, border=True, size=(10, 5), text="Button1")
tk.TTkButton(parent=root, border=True, text="Button2")
tk.TTkButton(parent=root, border=True, text="button3")

root.mainloop()
