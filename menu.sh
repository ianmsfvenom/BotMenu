#!bin/bash
apt install figlet 
CYAN="\033[1;36m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

if [ -e "$HOME/../usr/bin/ruby" ]; then
	echo $GREEN "ruby detectado prosseguindo..."
	sleep 1
	if [ -e "/data/data/com.termux/files/usr/bin/lolcat" ]; then
		echo $GREEN "lolcat detectado prosseguindo..."
		sleep 1
	else
		echo $RED "lolcat não detectado, instalando..."
		gem install lolcat
	fi
else
	echo $RED "Você não instalou o ruby, instalando..."
	sleep 1
	apt install ruby
	if [ -e "/data/data/com.termux/files/usr/bin/lolcat" ]; then
		echo $GREEN "lolcat detectado prosseguindo..."
		sleep 1
	else
		echo $RED "lolcat não detectado, instalando..."
		gem install lolcat
	fi
fi

clear

figlet -c -f slant -t 'Bot Whatsapp Termux' | lolcat 

echo  "Seja bem-vindo ao menu de bots de whatsapp o que deseja? \n\n" | lolcat -a -d 50 

sleep 0.5
echo $CYAN"[1] Instalar Brizas-bot Ultimate"
sleep 0.5
echo $CYAN"[2] Instalar Nabuto-bot"
sleep 0.5
echo $CYAN"[3] Instalar Kratos-bot"
sleep 0.5
echo $CYAN"[4] Instalar MhankBar-bot"
sleep 0.5
echo $CYAN"[5] Instalar Arya-bot"
sleep 0.5
echo $CYAN"[6] Sair"
echo $PURPLE
sleep 0.5

read -p "> " opts

if [ $opts = "1" ]; then
	clear
	echo $GREEN
	echo "[!] Estou instalando o bot aguarde..."
	echo $NC
	sleep 3
	cd
	git clone https://github.com/ianmsfvenom/Brizas-bot
	clear
	cd Brizas-bot
	bash install.sh
	clear
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, ESCREVA npm start E ESCANEIE O CÓDIGO :)"
	echo $NC
fi

if [ $opts = "2" ]; then
	clear
	echo $GREEN "[!] Estou instalando o bot aguarde..."
	echo $NC
	sleep 3
	cd
	git clone https://github.com/glub1/w
	clear
	cd w
	unzip w.zip
	cd w
	bash install.sh
	clear
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, ESCREVA npm start E ESCANEIE O CÓDIGO :)"
	echo $NC
fi

if [ $opts = "3" ]; then
	clear
	echo $GREEN "[!] Estou instalando o bot aguarde..."
	echo $NC
	sleep 3
	cd
	git clone https://github.com/KRATOSmdzkk23/kratos-bot
	clear
	cd kratos-bot
	bash install.sh
	clear
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, ESCREVA npm start E ESCANEIE O CÓDIGO :)"
	echo $NC
fi
if [ $opts = "4" ]; then
	clear
	echo $GREEN "[!] Estou instalando o bot aguarde..."
	echo $NC
	sleep 3
	cd
	git clone https://github.com/MhankBarBar/termux-wabot
	clear
	cd termux-wabot
	bash install.sh
	clear
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, ESCREVA npm start E ESCANEIE O CÓDIGO :)"
	echo $NC
fi
if [ $opts = "5" ]; then
	clear
	echo $GREEN "[!] Estou instalando o bot aguarde..."
	echo $NC
	sleep 3
	apt update && apt upgrade
	apt install nodejs
	apt install ffmpeg
	apt install imagemagick
	git clone https://github.com/Arya274/Arya-Bot
	clear
	cd Arya-Bot
	npm install
	clear
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, ESCREVA npm start E ESCANEIE O CÓDIGO :)"
	echo $NC
fi
if [ $opts = "6" ]; then
	echo $RED "FECHANDO..."
	sleep 3
	exit
fi
