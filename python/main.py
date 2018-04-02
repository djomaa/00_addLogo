#!/usr/bin/env python3
from sys import exit
from os import listdir, mkdir, chdir, getcwd
from os.path import isfile, exists
from PIL import Image

# logo opening
if exists("logo.png"):
    default_logo = Image.open("logo.png")
else:
    exit("ERROR: logo file doesn't exist!\n * " + getcwd() + "\logo.png")

# path input
path = ""
while not exists(path):
    path = input("Paste the path to the folder which contains photos\n >")
chdir(path)

# folder checking
if not exists("ready/"):
    try:
        mkdir("ready")
    except:
        exit("ERROR: folder cannot be created.\n * Try to create folder named ""ready"" by yourself")

# options
print("Now fill the parameters\n * leave blank to use default value")
print("\nQuality:\nThe image quality, on a scale from 1 (worst) to 95 (best). The default is 75. Values above 95 should be avoided; 100 disables portions of the JPEG compression algorithm, and results in large files with hardly any gain in image quality.")
quality = int(input("Quality [1-95] [default: 75]): "))
if quality == "":
    quality = 75

optimize = input("Optimize [1/true or 0/false] [default: 1]: ")
progressive = input("Progressive [true or false] [default: 1]: ")
if (optimize == "0") or (optimize == "false" ):
    optimize = False
else:
    optimize = True
if (progressive == "0") or (progressive == "false"):
    progressive = False
else:
    optimize = True

def add_logo(image):
    global default_logo, quality, optimize, progressive

    path = "ready/" + image
    image = Image.open(image)

    wsize = int(min(image.size[0], image.size[1]) * 0.17)
    wpercent = (wsize / float(default_logo.size[0]))
    hsize = int((float(default_logo.size[1]) * float(wpercent)))

    logo = default_logo.resize((wsize, hsize))
    mbox = image.getbbox()
    sbox = logo.getbbox()

    # right bottom corner
    box = (mbox[2] - sbox[2] - int(image.size[0]*0.035), mbox[3] - sbox[3] - int(image.size[1]*0.035))
    image.paste(logo, box)
    image.save(path, quality=int(quality), optimize=bool(optimize), progressive=bool(progressive))
    return 0


# main
errors = ""
total_number = 0
error_number = 0
for file in listdir():
    if isfile(file):
        total_number += 1
        try:
            add_logo(file)
        except Exception as error:
            error_number += 1
            errors += "ERROR: " + str(error) + "\n"
        else:
            print("SUCCESS: " + file)
if errors:
    print(errors)
print("\nTotal files: " + str(total_number) + "\nNumber of errors: " + str(error_number))

input("\nPress 'enter' to exit")
exit(0)
