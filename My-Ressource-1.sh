#!/bin/bash


#check the scripting 
echo "hello, $USER!"
date
pwd
neofetch
echo " Starting installation of your tools and plugins ......" 
echo " starting installation the base packages ......"
echo " No confirmation required for this script ....."

#install base package 

sudo pacman -S --noconfirm \
	git \
	curl \
	wget \
	vim \
	neofetch \
	base-devel \
	unzip \
	zip \
	tmux \
	net-tools 

echo "Base Package has installed successfully !"	
echo "Starting installation the Development tools "

sudo pacman -S --noconfirm \
	python \
	python-pip \
	nodejs \
	npm \
	jdk-openjdk \
	docker \
	docker-compose\
	mariadb \
	php-apache \
	phpmyadmin \
	apache 
	
echo "  development tools has installed successfully !"
echo " Starting installation of security tools " 

sudo pacman -S --noconfirm \
	nmap \
	wireshark-qt \
	john \
	sqlmap \
	gobuster \
	zaproxy 

echo " Security tools has ben downloaded successfully !"
echo " Starting the optional GUI apps "

sudo pacman -S --noconfirm \
	firefox \
	gparted \
	code \
	vlc 

echo " system tools and packages installed with pacman ."

sudo pacman -S --noconfirm \
	timeshift \
	smartmontools \
	flatpak 
echo " utilities has benn installed "
echo " Starting Design Tools "
sudo pacman -S --noconfirm \
	gimp \
	krita \
	libreoffice-fresh 

echo " checking the installtion of Yay ...."

if ! command -v yay &> /dev/null 
then 
	echo " yay not found , installing yay .... "
	cd ~
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si --noconfirm
	cd ..

fi


echo " Starting the Aur pacakge now ..... "

sudo yay -S --noconfirm \
	apidog-bin \
	bauh \
	librewolf-bin \
	xampp \
	windsurf 





echo " All Application and packages installed "
echo " Ready to go !"
echo " System will reboot in 10 seconds ....."
sleep 10 
echo " waiting 10 seconds ...."
for i in {10..1}; do 
	echo"$i..."
	sleep 1
done
sudo reboot 


