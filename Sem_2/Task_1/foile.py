import os
import shutil 


def t1(path,path_away):
    dirA=str(input("Noice ! Let's make a dir\nEnter the name of the dir "))
    path+="\\"+dirA
    print (path)
    os.mkdir(path)
    path=path_away

        
def t2(path,path_away):
    dirA=str(input("Noice ! Let's KILL a dir\nEnter the name of the dir "))
    path+="\\"+dirA
    os.rmdir(path)
    path = path_away
    
def t3(path): # path[-4] 
    mov=str(input("KK ! WHERE U WANNA MOVE, FELLOW: \n(dont forget to enter the full path) "))
    path+="\\"+mov
    os.chdir(path)

    return path
    
def t4(path):
    fok=str(input("Jeez, you are a crazy bastard ! Tell me the name of our future empty file "))
    with open (path+"\\"+fok, mode='a'):
        pass
    print ("This bastard is ready to use")
        
def t5(path):
    fok=str(input("Damn, okay. Enter the file name: "))
    text=str(input("Tell me what u want to enter in it: "))
    with open (path+"\\"+fok, "w") as writer:
        writer.write(text)

def t6(path):
     print ("Damn u love secrets !\nEnter the file name u wanna peek in\n")
     fok=str(input())
     with open (path+"\\"+fok, "r") as f:
         lin=f.readlines()
         for lina in lin:
             print (lina)

def t7(path):
    fok=str(input("Enter the file name u wanna take out: "))
    os.remove (path+"\\"+fok)
    
def t8():
    pt1=str(input("Enter the name of the file u wanna transfer "))
    pt2=str(input("Enter the name of where u wanna transfer: "))
    shutil.copy(pt1, pt2)

def t9():
    korg = str(input("What file u wanna move ? "))
    dorg = str(input("Where u wanna move ur file ? "))
    shutil.move(korg, dorg)      

def t10():
    fok1=str(input("Enter the name of the current file "))
    fok2=str(input("Enter how u wanna see it's name "))
    os.rename(fok1,fok2)


path=os.getcwd()
print (path)
path_away = path
inpu=100
       
while True:
    
    print ("\nPush 1 to make a dir with the specific name.\n2 - To remove the dir.\n3 - To move to another dir. \n4- make an empty file with the specific name. \n5 - To enter text in the file (you should choose it). \n6 - See the contents of the file. \n7 - delete the file with the specific name. \n8 - copy the files from one folder to another. \n9 - Move files from one place to another. \n10 - rename files. \n0 - To kill the program.\n")    

    inpu=int(input())
    
    if inpu == 0:
        exit()

    elif inpu == 1:
        t1(path,path_away)
    
    elif inpu == 2:
        t2(path,path_away)
    
    elif inpu == 3:
        path=t3(path)
        print (path)
    
    elif inpu == 4:
        t4(path)
    
    elif inpu == 5:
        t5(path)
    
    elif inpu == 6:
        t6(path)
    
    elif inpu == 7:
        t7(path)
        
    elif inpu == 8:
        t8()
    
    elif inpu == 9:
        t9()
    
    elif inpu == 10:
        t10()
    
    else:
      print ("push 1 to make a dir with the specific name.\n 2 - To remove the dir.\n 3 - To move to another dir. \n4- make an empty file with the specific name. \n5 - To enter text in the file (you should choose it). \n6 - See the contents of the file. \n7 - delete the file with the specific name. \n8 - copy the files from one folder to another. \n9 - Move files from one place to another. \n10 - rename files. \n0 - To kill the program.")
