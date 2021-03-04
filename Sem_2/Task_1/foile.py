import os

print ("TO FINISH THIS PROGRAM TYPE 0")

inpu=100

path="/home/none/Рабочий стол/" 

while True:
    
  

    print ("push 1 to make a dir with the specific name.\n 2 - To remove the dir.\n 3 - To move to another dir. \n4- make an empty file with the specific name. \n5 - To enter text in the file (you should choose it). \n6 - See the contents of the file. \n7 - delete the file with the specific name. \n8 - copy the files from one folder to another. \n9 - Move files from one place to another. \n10 - rename files. \n0 - To kill the program.")    

    inpu=int(input())
    
    if inpu==0:
        exit()
    
    elif inpu==1:
        dirA=str(input("Noice ! Let's make a dir\nEnter the name of the dir ")
        path+=dirA
        os.mkdir(path)
        path="/home/none/Рабочий стол/" 

    elif inpu==2:
        dirA=str(input("Noice ! Let's KILL a dir\nEnter the name of the dir ")
        path+=dirA
        os.rmdir(path)
        path="/home/none/Рабочий стол/" 

    elif inpu==3:
        mov=str(input("KK ! WHERE U WANNA MOVE, FELLOW: \n(dont forget to enter the full path")
        path=mov

    elif inpu==4:
        fok=str(input("Jeez, you are a crazy bastard ! Tell me the name of our future empty file ")
        path+=fok
        with open (path, mode='a'):
            pass
        print ("This bastard is ready to use")
        path=path-fok
        
        
