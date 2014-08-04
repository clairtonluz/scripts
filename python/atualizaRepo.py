import os

currentDir = os.getcwd()

for filename in os.listdir('.'):
  dirname = currentDir + '/' + filename

  if (os.path.isdir(dirname)):
     os.chdir(dirname)
     os.system("git pull origin master")


print("TODOS OS REPOSITORIOS FORAM ATUALIZADOS")
