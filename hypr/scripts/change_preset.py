#!/bin/python3
import subprocess
import os.path
import pathlib
from gi.repository import Notify, GdkPixbuf

cmd_output = subprocess.check_output(["easyeffects", "-p"]).decode("utf-8") 
presets = cmd_output.removeprefix("Output Presets: ").split("\n", 1)[0].split(",")[:-1]

path = pathlib.Path(str(pathlib.Path.home())+"/.var/current_preset")
pathlib.Path(str(pathlib.Path.home())+"/.var").mkdir(parents=True, exist_ok=True)

current_index = 0
Notify.init("Presets change")

if (not os.path.exists(path)):
    with open(path, 'w') as f:
        f.write(str(current_index))
        
else:
    with open(path, "r") as f:
        lines = f.readlines()
    current_index = (int(lines[0]) + 1) % len(presets)
    


    with open(path, "w") as f:
        f.write(str(current_index))

print(current_index)
subprocess.call(["easyeffects", "-l", str(presets[current_index])])

image = GdkPixbuf.Pixbuf.new_from_file(str(pathlib.Path.home())+"/.config/hypr/scripts/easyeffects.svg")
notification = Notify.Notification.new("Changed music preset", "New preset: {new}".format(new=presets[current_index]))

notification.set_icon_from_pixbuf(image)
notification.set_image_from_pixbuf(image)

notification.show()

