import os

directory = r"C:\Users\dekhi\Desktop\gamsworldtweaks\gamsworld\Global Library\points"

def changep1togms(string):
    string = string[:-3]
    string+='.gms'
    return string

for root, dirs, files in os.walk(directory):
    for i in files:
        string = "gams Scalar_models\\" + changep1togms(i) + " u1=create_gdx.gms u2=points\\"+i
        os.system(string)