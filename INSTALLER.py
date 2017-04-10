#!/usr/bin/python
import os


print (" Instalando comando install")

os.system('cp ./install /usr/local/bin/install')

print("----------------------------------------------")
print (" Instalando comando update")

os.system('cp ./update /usr/local/bin/update')

print("----------------------------------------------")
print (" Instalando comando upgrade")

os.system('cp ./upgrade /usr/local/bin/upgrade')

print("----------------------------------------------")
print (" Instalando comando ips")

os.system('cp ./ips.sh /usr/local/bin/ips')

print("----------------------------------------------")
print ("Instalado HTOP")

os.system('update')
os.system('apt-get install htop -y')

print("----------------------------------------------")
print (" Instalando y configurando ZSH y Oh my Zsh!")

os.system('apt-get install zsh')
os.system('wget --no-check-certificate http://install.ohmyz.sh -O')
os.system('cp ./.zshrc /root/.zshrc')
os.system('chsh -s /bin/zsh')


print("----------------------------------------------")
print (" Personalizando Mensaje de Bienvenida")

issue = raw_input("Escriba el mensaje de bienvenida para este equipo: ")

outfile = open ('/etc/issue.net', 'w')
outfile.write(issue)
outfile.close()

print("----------------------------------------------")
print (" Proceso finalizado, para disfrutar de todos los cambios cierre la sesion y vuelva a entrar")
