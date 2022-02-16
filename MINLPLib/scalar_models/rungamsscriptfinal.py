import subprocess
from os import listdir
from os.path import isfile, join
onlyfiles = [f for f in listdir("../gdx_points/")]

for i in onlyfiles:
    filename = "'" + str(i) + "'"
    filename = filename[1:]
    filename = filename[:-1]
    fileroot = filename[:-7]
    print(fileroot)
    bashCommand = "gdxdump ../gdx_points/"+filename+" Format=gamsbas output="+fileroot+".inc"
    bashCommand = str(bashCommand)
    subprocess.run(bashCommand)