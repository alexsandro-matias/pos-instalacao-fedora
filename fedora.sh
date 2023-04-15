# Deixando repositórios mais rápidos
sudo echo "
fastestmirror=true
max_parallel_downloads=10
" >> /etc/dnf/dnf.conf && exit


# Atualização do Sistema
sudo dnf upgrade -y
sudo dnf autoremove -y

# Instalação do VLC
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install vlc  -y


# Instalação do Navegador Brave 
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y


# Instalação do Java 8
sudo dnf install java-1.8.0-openjdk-devel -y

# Download e Instalação do Eclipse para JavaEE
wget -c https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2021-12/R/eclipse-jee-2021-12-R-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
sudo tar -zxvf eclipse.tar.gz -C /opt/
sudo mv /opt/eclipse*/ /opt/eclipse


# Criação de atalho
echo "
[Desktop Entry]
Name=Eclipse
Comment=Eclipse
Exec=/opt/eclipse/eclipse
Icon=/opt/eclipse/icon.xpm
Terminal=false
Type=Application" > eclipse.desktop && cp eclipse.desktop ~/.local/share/applications/


# Instalação de programas básicos
sudo dnf install neofetch vim telegram-desktop git p7zip p7zip-plugins unrar qbittorrent -y

# Instalando idiomas PT-BR para Libreoffice
sudo dnf install libreoffice-langpack-pt-BR
git clone https://github.com/alexsandro-matias/autocompletar.git
cp -R autocompletar/libreoffice/linux/4/ ~/.config/libreoffice/

