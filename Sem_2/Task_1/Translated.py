import os
import shutil 


def t1(path,path_away):
    my_dir=str(input("Введите название папки, которую вы хотите создать"))
    path+="\\"+my_dir
    print (path)
    os.mkdir(path)
    path=path_away

        
def t2(path,path_away):
    del_my_dir=str(input("Введите название папки, которую вы хотите удалить "))
    path+="\\"+del_my_dir
    os.rmdir(path)
    path = path_away
    
def t3(path):
    my_dir=str(input("Введите название папки,чтобы перемещаться по папкам "))
    path+="\\"+my_dir
    os.chdir(path)
    return path
    
def t4(path):
    my_file=str(input("Введите имя нового пустого файла "))
    with open (path+"\\"+my_file, mode='a'):
        pass
    print ("Можно пользоваться данным файлом")
        
def t5(path):
    my_file=str(input("введите название файла"))
    my_text=str(input("Введите то, что вы хотите записать в файл "))
    with open (path+"\\"+my_file, "w") as writer:
        writer.write(my_text)

def t6(path):
     print ("Введите имя файла, из которого вы хотите получить содержимое ")
     my_file=str(input())
     with open (path+"\\"+my_file, "r") as f:
         my_lines=f.readlines()
         for line in my_lines:
             print (line)

def t7(path):
    my_file=str(input("Введите имя файла для того, чтобы его удалить "))
    os.remove (path+"\\"+my_file)
    
def t8():
    file_copy=str(input("Введите название файла, который вы хотите скопировать  "))
    new_dir_copy=str(input("Введите название папки, в который вы хотите ввести содержимое файла "))
    shutil.copy(file_copy, new_dir_copy)

def t9():
    my_file = str(input("Введите путь копируемого файла "))
    my_new_file = str(input("Введите путь назначения нового файла "))
    shutil.move(my_file, my_new_file)      

def t10():
    file_name=str(input("Введите название текущего файла "))
    file_new_name=str(input("Введите новое название данного(текущего) файла "))
    os.rename(file_name,file_new_name)


path=os.getcwd()
path_away = path
choicer=-1       

while True:
    
    print ("\nНажми 1 для того, чтобы выйти из моей программы. \n1 - для того, чтобы создать папку.\n2 - для того, чтобы удалить папку.\n3 - для того, чтобы перемещаться между папками. \n4- для того, чтобы создать пустой файл. \n5 - для того чтобы произвести запись текста в файл. \n6 - для того, чтобы сделать просмотр содержимого файла. \n7 - для того, чтобы удалить файл. \n8 - для того, чтобы копировать файлы из одной папки в другую. \n9 - для того, чтобы перемещать файлы. \n10 - для того, чтобы переименовать файлы.\n")    

    choicer=int(input())
    
    if choicer == 0:
        exit()

    elif choicer == 1:
        t1(path,path_away)
    
    elif choicer == 2:
        t2(path,path_away)
    
    elif choicer == 3:
        path=t3(path)
        print (path)
    
    elif choicer == 4:
        t4(path)
    
    elif choicer == 5:
        t5(path)
    
    elif choicer == 6:
        t6(path)
    
    elif choicer == 7:
        t7(path)
        
    elif choicer == 8:
        t8()
    
    elif choicer == 9:
        t9()
    
    elif choicer == 10:
        t10()
    
    else:
        print ("\nНажми 1 для того, чтобы выйти из моей программы. \n1 - для того, чтобы создать папку.\n2 - для того, чтобы удалить папку.\n3 - для того, чтобы перемещаться между папками. \n4- для того, чтобы создать пустой файл. \n5 - для того чтобы произвести запись текста в файл. \n6 - для того, чтобы сделать просмотр содержимого файла. \n7 - для того, чтобы удалить файл. \n8 - для того, чтобы копировать файлы из одной папки в другую. \n9 - для того, чтобы перемещать файлы. \n10 - для того, чтобы переименовать файлы.\n")    
