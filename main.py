from tkinter import *       # Import module

root = Tk()                 # Create root window

root.title("Welcome to Tkinter")        # root window title
root.geometry('400x300')                # root window dimension(width x height)

menu = Menu(root)
item = Menu(menu)
item.add_command(label='New')
menu.add_cascade(label='File', menu='item')
menu.add_cascade(label='File2', menu='item')
root.config(menu=menu)

lbl = Label(root, text="Are you a Greek ?")             #adding a label to the root window
lbl.grid()                  # set the location

txt = Entry(root, width=10)             # adding entry field
txt.grid(row=0, column=1)

def clicked():
    res = "Your wrote : " + txt.get()
    lbl.config(text=res)
    # lbl.config(text="I just got clicked")       # function to display text when / button is clicked

btn = Button(root, text="Click me", fg="red", command=clicked)      #button widget with red color text
btn.grid(row=0, column=2)

root.mainloop()             # Execute tkinter