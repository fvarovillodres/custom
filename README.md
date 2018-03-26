# CUSTOMIZACIÓN
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Ffvarovillodres%2Fcustom.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Ffvarovillodres%2Fcustom?ref=badge_shield)


Algunos comandos simples para simplificar la vida en la terminal al root. Cambiamos el bash por zsh. También puedes modificar los scrips para usarlos como usuario normal.

## INSTALACIÓN

Ejecutar el custom.sh como root

	sudo python INSTALLER.py

## COMANDOS

### ips

Este comando nos mostrará cada tarjeta de red con su correspondiente IP y su MAC. Además nos 
dirá el Gateway y el DNS de nuestra máquina. IMPORTANTE, si usas una distribución basada en 
Arch Linux, cambia el script ips.sh por el de ips_arch.sh. Uso:

	ips

### redtest

Este comando este comando hará una prueba de conexión con el comando ping para comprobar que podemos alcanzar nuestra Gateway e Internet. Además probará nuestra configuración DNS. Uso:

	redtest

### update

Similar a apt-get update pero con la salida estándar simplificada. Uso:

	update

### upgrade e install

Similares a apt-get ugrade y apt-get install, con la diferencia de que haremos un apt-get update antes de cada uno de ellos para asegurarnos de que tenemos los repositorios actualizados. Su uso es el siguiente:

	upgrade
	install paquete_a_instalar

## ZSH

Además del aspecto ZSH añade otras mejoras a nuestra terminal, como pueden ser el autocompletado, corrección ortografica y una tabulación mejorada. También incluye un plugin que nos ayudará con el uso de GIT

Para el tema que uso en este caso necesitaras instalar algunos simbolos especiales para que tu simulador de terminal los muestre correctamente. Para ello deberas ejecutar los siguientes comandos:

	cd
	wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
	wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
	mv PowerlineSymbols.otf ~/.fonts/
	mkdir -p .config/fontconfig/conf.d #if directory doesn't exists
	fc-cache -vf ~/.fonts/
	mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Ffvarovillodres%2Fcustom.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Ffvarovillodres%2Fcustom?ref=badge_large)