# Atualização do Sistema
sudo dnf upgrade -y
sudo dnf autoremove -y

# Instalação do VLC
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install vlc -y


# Instalação do Navegador Brave 
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y


# Instalação do Java 8
sudo dnf install java-1.8.0-openjdk-devel 


# Instalação de programas básicos
sudo dnf install neofetch vim telegram-desktop git 


