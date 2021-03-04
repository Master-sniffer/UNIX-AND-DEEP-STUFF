import os
import shutil 

print ("TO FINISH THIS PROGRAM TYPE 0")

inpu=100

path="/home/none/Рабочий стол/" 

while True:
    
  

    print ("push 1 to make a dir with the specific name.\n 2 - To remove the dir.\n 3 - To move to another dir. \n4- make an empty file with the specific name. \n5 - To enter text in the file (you should choose it). \n6 - See the contents of the file. \n7 - delete the file with the specific name. \n8 - copy the files from one folder to another. \n9 - Move files from one place to another. \n10 - rename files. \n0 - To kill the program.")    

    inpu=int(input())
    
    if inpu==0:
        exit()
    
    elif inpu==1:
        dirA=str(input("Noice ! Let's make a dir\nEnter the name of the dir "))
        path+=dirA
        os.mkdir(path)
        path="/home/none/Рабочий стол/" 

    elif inpu==2:
        dirA=str(input("Noice ! Let's KILL a dir\nEnter the name of the dir "))
        path+=dirA
        os.rmdir(path)
        path="/home/none/Рабочий стол/" 

    elif inpu==3:
        mov=str(input("KK ! WHERE U WANNA MOVE, FELLOW: \n(dont forget to enter the full path"))
        path=mov

    elif inpu==4:
        fok=str(input("Jeez, you are a crazy bastard ! Tell me the name of our future empty file "))
        path+=fok
        with open (path, mode='a'):
            pass
        print ("This bastard is ready to use")
        path=path-fok
    
    elif inpu==6:
      print ("Damn u love secrets !\nEnter the file name u wanna peek in\n")
      fok=str(input())
      with open (path+fok, "r") as f:
        lin=f.readlines()
        for lina in lin:
          print (lina)
    
    elif inpu==5:
      fok=str(input("Damn, okay. Enter the file name: "))
      text=str(input("Tell me what u want to enter in it: "))
      with open (path+fok, "w") as writer:
        writer.write(text)

    elif inpu==7:
      fok=str(input("Enter the file name u wanna take out: "))
      os.remove (path+fok)
    
    elif inpu==8:
      pt1=str(input("Enter the name of the file u wanna transfer "))
      pt2=str(input("Enter the name of where u wanna transfer: "))
      newPath = shutil.copy(pt1, pt2)
    
    elif inpu==9:
      korg = str(input("What file u wanna move ? "))
      dorg = str(input("Where u wanna move ur file ? "))
      shutil.move(korg, dorg)

    elif inpu==10:
      fok1=str(input("Enter the name of the current file "))
      fok2=str(input("Enter how u wanna see it's name "))
      os.rename(fok1,fok2)
    
    else:
      print ("push 1 to make a dir with the specific name.\n 2 - To remove the dir.\n 3 - To move to another dir. \n4- make an empty file with the specific name. \n5 - To enter text in the file (you should choose it). \n6 - See the contents of the file. \n7 - delete the file with the specific name. \n8 - copy the files from one folder to another. \n9 - Move files from one place to another. \n10 - rename files. \n0 - To kill the program.") 
