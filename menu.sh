#!bin/bash
apt update
apt upgrade
apt install figlet
pacote=$(dpkg --get-selections | grep "ruby" ) 

CYAN="\033[1;36m"
YELLOW="\033[1;33m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

if [ -n "$pacote" ]; then
	echo $GREEN"[!] Ruby detectado prosseguindo..."
	sleep 1
	pacote=$(dpkg --get-selections | grep "lolcat" ) 
	if [ -n "$pacote" ]; then
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
	echo $YELLOW"[!] Instalando o lolcat..."
	gem install lolcat 
fi

clear

figlet -c -f slant -t 'Briz4lok4' | lolcat 

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
echo $CYAN"[9] Instalar rastreador de localização"
sleep 0.5
echo $CYAN"[10] Sair"
echo $PURPLE
sleep 0.5

read -p "> " opts

if [ $opts = "1" ]; then
	clear
	echo $GREEN
	echo "[!] Baixando o bot aguarde..." $NC
	sleep 3
	if [ -e "$HOME/Brizas-bot" ]; then
		clear
		echo $YELLOW"O bot já esta instalado no termux, caso queira reinstalar, exclua a pasta do bot com (rm -r -f Brizas-bot) e tente novamente"
		exit
	fi
	cd
	git clone https://github.com/ianmsfvenom/Brizas-bot > /dev/null 2> /dev/null
	clear
	echo $GREEN"[!] Bot baixado com sucesso! Instalando as dependências..." $NC
	cd Brizas-bot
	bash install.sh /dev/null 2> /dev/null
	clear
	echo $GREEN"[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd Brizas-bot && npm start"
	echo
	echo $NC
fi

if [ $opts = "2" ]; then
	clear
	echo $GREEN"[!] Baixando o bot aguarde..." $NC
	sleep 3
	if [ -e "$HOME/w" ]; then
		clear
		echo $YELLOW"O bot já esta instalado no termux, caso queira reinstalar, exclua a pasta do bot com (rm -r -f w) e tente novamente"
		exit
	fi
	cd
	git clone https://github.com/glub1/w > /dev/null 2> /dev/null
	clear
	echo $GREEN"[!] Bot baixado com sucesso! Instalando as dependências..." $NC
	cd w
	pkg install unzip > /dev/null 2> /dev/null
	pkg install nodejs > /dev/null 2> /dev/null
	pkg install ffmpeg > /dev/null 2> /dev/null
	pkg install tesseract > /dev/null 2> /dev/null
	unzip w.zip > /dev/null 2> /dev/null
	cd w
	bash install.sh > /dev/null 2> /dev/null
	clear
	echo $GREEN"[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd w && cd w && npm start"$NC
fi
if [ $opts = "3" ]; then
	clear
	echo $GREEN"[!] Baixando o bot aguarde..."$NC
	sleep 3
	if [ -e "$HOME/Caussx" ]; then
		clear
		echo $YELLOW"O bot já esta instalado no termux, caso queira reinstalar, exclua a pasta do bot com (rm -r -f Caussx) e tente novamente"
		exit
	fi
	cd
	git clone https://github.com/Admcauss-alt/Caussx > /dev/null 2> /dev/null
	clear
	echo $GREEN"[!] Bot baixado com sucesso! Instalando as dependências..."$NC
	cd Caussx
	bash install.sh > /dev/null 2> /dev/null
	clear
	echo $GREEN"[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW"cd .. && cd Caussx && npm start"$NC
fi

if [ $opts = "4" ]; then
	clear
	echo $GREEN"[!] Baixando o bot aguarde..." $NC
	sleep 3
	if [ -e "$HOME/bot4.0" ]; then
		clear
		echo $YELLOW"O bot já esta instalado no termux, caso queira reinstalar, exclua a pasta do bot com (rm -r -f bot4.0) e tente novamente"
		exit
	fi
	cd
	git clone https://github.com/KRATOSmdzkk23/bot4.0.git > /dev/null 2> /dev/null
	clear
	echo $GREEN"[!]Bot baixado com sucesso! Instalando as dependências..."$NC
	cd bot4.0
	bash install.sh > /dev/null 2> /dev/null
	clear
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd bot4.0 && npm start"$NC
fi
if [ $opts = "5" ]; then
	clear
	echo $GREEN "[!] Baixando o bot aguarde..."$NC
	sleep 3
	if [ -e "$HOME/termux-wabot" ]; then
		clear
		echo $YELLOW"O bot já esta instalado no termux, caso queira reinstalar, exclua a pasta do bot com (rm -r -f termux-wabot) e tente novamente"
		exit
	fi
	cd
	git clone https://github.com/MhankBarBar/termux-wabot > /dev/null 2> /dev/null
	clear
	echo $GREEN"[!]Bot baixado com sucesso! Instalando as dependências..."$NC
	cd termux-wabot
	bash install.sh > /dev/null 2> /dev/null
	clear
	echo $GREEN "[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd termux-wabot && npm start"$NC
fi
if [ $opts = "6" ]; then
	clear
	echo $GREEN "[!] Baixando o bot aguarde..."$NC
	sleep 3
	if [ -e "$HOME/Arya-Bot" ]; then
		clear
		echo $YELLOW"O bot já esta instalado no termux, caso queira reinstalar, exclua a pasta do bot com (rm -r -f Arya-Bot) e tente novamente"
		exit
	fi
	cd
	apt install nodejs > /dev/null 2> /dev/null
	apt install ffmpeg > /dev/null 2> /dev/null
	apt install imagemagick > /dev/null 2> /dev/null
	git clone https://github.com/Arya274/Arya-Bot > /dev/null 2> /dev/null
	clear
	cd Arya-Bot
	npm install > /dev/null 2> /dev/null
	clear
	echo $GREEN"[!] BOT INSTALADO COM SUCESSO, COPIE E COLE O COMANDO ABAIXO E DPS ESCANEIE O CÓDIGO :)"
	echo
	echo $YELLOW "cd .. && cd Arya-Bot && npm start"$NC
fi

if [ $opts = "7" ]; then
	clear
	echo $GREEN "[!] Instalando a ferramenta aguarde..."$NC
	sleep 3
	if [ -e "$HOME/Kiny-Painel" ]; then
		clear
		echo $YELLOW"A ferramenta já esta instalado no termux, caso queira reinstalar, exclua a pasta do bot com (rm -r -f Kiny-Painel) e tente novamente"
		exit
	fi
	cd
	apt install python > /dev/null 2> /dev/null
	apt install python2 > /dev/null 2> /dev/null
	git clone https://github.com/Kiny-Kiny/Kiny-Painel > /dev/null 2> /dev/null
	clear
	echo $GREEN "[!] FERRAMENTA INSTALADA COM SUCESSO, COPIE E COLE O COMANDO ABAIXO, O USUARIO E QUALQUER UM E A SENHA É: VirtualInsanity"
	echo
	echo $YELLOW "cd .. && Kiny-Painel && python3 main.py"$NC

fi

if [ $opts = "8" ]; then
	clear
	echo $GREEN "[!] Instalando o ngrok aguarde..."$NC
	sleep 3
	if [ -e "$HOME/ps.ngrok" ]; then
		clear
		echo $YELLOW"A ferramenta já esta instalado no termux, caso queira reinstalar, exclua a pasta do bot com (rm -r -f ps.ngrok) e tente novamente"
		exit
	fi
	cd
	git clone https://github.com/PSecurity/ps.ngrok > /dev/null 2> /dev/null
	cd ps.ngrok
	chmod 777 ngrok 
	clear
	echo $GREEN "[!] FERRAMENTA INSTALADA COM SUCESSO, AGORA E SO IR NA PASTA E USAR SUA KEY DE ATIVAÇÃO"
	echo $GREEN "[!] SIGA OS COMANDOS ABAIXO:"
	echo
	echo $YELLOW "cd && cd ps.ngrok && ./ngrok authtoken (sua key)"$NC

fi

if [ $opts = "9" ]; then
	clear
	echo $GREEN "[!] Instalando a ferramenta aguarde..."$NC
	sleep 3
	if [ -e "$HOME/seeker" ]; then
		clear
		echo $YELLOW"A ferramenta já esta instalado no termux, caso queira reinstalar, exclua a pasta do bot com (rm -r -f seeker) e tente novamente"
		exit
	fi
	cd
	pkg install python php openssh python2 > /dev/null 2> /dev/null
	git clone https://github.com/thewhiteh4t/seeker > /dev/null 2> /dev/null
	cd seeker
	clear
	echo $GREEN "[!] FERRAMENTA INSTALADA COM SUCESSO, ABRA OUTRA SESSÃO E INICIE O NGROK"
	echo $GREEN "[!] SIGA OS COMANDOS ABAIXO:"
	echo
	echo $YELLOW "cd && cd ps.ngrok && ./ngrok http 8080"$NC

fi

if [ $opts = "10" ]; then
	echo $RED "FECHANDO..."
	sleep 3
	exit
fi
