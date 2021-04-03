#!bin/bash
apt install figlet 
pkg update && pkg upgrade 
pkg install git 
pkg install wget 
CYAN="\033[1;36m"
YELLOW="\033[1;33m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

if [ -e "$HOME/../usr/bin/ruby" ]; then
	echo $GREEN"[!] Ruby detectado prosseguindo..."
	sleep 1
	if [ -e "/data/data/com.termux/files/usr/bin/lolcat" ]; then
		echo $GREEN"[!] Lolcat detectado prosseguindo..."
		sleep 1
	else
		echo $RED"[!] Lolcat não detectado, instalando..."
		gem install lolcat 
	fi
else
	echo $RED"[!] Ruby não detectado, instalando..."
	sleep 1
	apt install ruby 
	if [ -e "/data/data/com.termux/files/usr/bin/lolcat" ]; then
		echo $GREEN"[!] Lolcat detectado prosseguindo..."
		sleep 1
	else
		echo $RED"[!] Lolcat não detectado, instalando..."
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
echo $CYAN"[3] Instalar Causs-bot"
sleep 0.5
echo $CYAN"[4] Instalar Kratos-bot"
sleep 0.5
echo $CYAN"[5] Instalar MhankBar-bot"
sleep 0.5
echo $CYAN"[6] Instalar Arya-bot"
sleep 0.5
echo $CYAN"[7] Instalar ferramenta de puxar dados"
sleep 0.5
echo $CYAN"[8] Instalar o ngrok"
sleep 0.5
echo $CYAN"[9] Sair"
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
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd Brizas-bot && npm start"
	echo
	echo $NC
fi

if [ $opts = "2" ]; then
	clear
	echo $GREEN "[!] Estou instalando o bot aguarde..."
	echo $NC
	sleep 3
	git clone https://github.com/glub1/w 
	clear
	cd w
	pkg install unzip 
	pkg install nodejs 
	pkg install ffmpeg 
	pkg install tesseract 
	unzip w.zip 
	clear
	cd w
	bash install.sh 
	clear
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd w && cd w && npm start"
	echo
	echo $NC
fi

if [ $opts = "3" ]; then
	clear
	echo $GREEN "[!] Estou instalando o bot aguarde..."
	echo $NC
	sleep 3
	cd
	git clone https://github.com/Admcauss-alt/Caussx 
	clear
	cd Caussx
	bash install.sh 
	clear
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd Caussx && npm start"
	echo
	echo $NC
fi

if [ $opts = "4" ]; then
	clear
	echo $GREEN "[!] Estou instalando o bot aguarde..."
	echo $NC
	sleep 3
	cd
	git clone https://github.com/KRATOSmdzkk23/bot4.0.git 
	clear
	cd bot4.0
	bash install.sh 
	clear
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd bot4.0 && npm start"
	echo
	echo $NC
fi
if [ $opts = "5" ]; then
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
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd termux-wabot && npm start"
	echo
	echo $NC
fi
if [ $opts = "6" ]; then
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
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd Arya-Bot && npm start"
	echo
	echo $NC
fi

if [ $opts = "7" ]; then
	clear
	echo $GREEN "[!] Estou instalando a ferramenta aguarde..."
	echo $NC
	sleep 3
	apt install python && apt install python2 
	git clone https://github.com/Kiny-Kiny/Kiny-Painel 
	clear
	echo $GREEN "[!] FERRAMENTA INSTALADA COM SUCESSO, COPIE E COLE O COMANDO ABAIXO, O USUARIO E QUALQUER UM E A SENHA É: VirtualInsanity"
	echo
	echo $YELLOW "cd .. && Kiny-Painel && python3 main.py"
	echo
	echo $NC

fi

if [ $opts = "8" ]; then
	clear
	echo $GREEN "[!] Estou instalando a ferramenta aguarde..."
	echo $NC
	sleep 3
	cd
	git clone https://github.com/PSecurity/ps.ngrok 
	cd ps.ngrok
	chmod 777 ngrok 
	clear
	echo $GREEN "[!] FERRAMENTA INSTALADA COM SUCESSO, AGORA E SO IR NA PASTA E USAR SUA KEY DE ATIVAÇÃO"
	echo $GREEN "[!] SIGA OS COMANDOS ABAIXO:"
	echo
	echo $YELLOW "cd && cd ps.ngrok && ./ngrok authtoken (sua key)"
	echo
	echo $NC

fi

if [ $opts = "9" ]; then
	echo $RED "FECHANDO..."
	sleep 3
	exit
fi
