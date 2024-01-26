# Update & Upgrade

sudo apt update
sudo apt upgrade
<<<<<<< HEAD
sudo apt install vim
sudo apy install nvim
=======
sudo apt install neovim


# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

>>>>>>> c27e8188deefe777f6bef3d46aef72d36006e230

# Python & pip
sudo apt install python3-pip

# NPM & Node
sudo apt install nodejs
sudo apt install npm




# Docker & Docker Desktop
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin





# VSCode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# Cursor

wget https://www.cursor.so/cursor-0.12.0.Appimage
chmod +x cursor-0.8.5.AppImage
sudo apt-get install fuse
chmod +x cursor-0.8.5.AppImage
sudo mkdir /opt/cursor/
sudo mv cursor-0.8.5.AppImage /opt/cursor/cursor.appimage
sudo vim /usr/share/applications/cursor.desktop
echo "[Desktop Entry]
Name=Cursor
Exec=/opt/cursor/cursor.appimage
Icon=/opt/cursor/cursor.png
Type=Application
Categories=Development;
"
echo "Find an icon to use for cursor and add it to your cursor directory in opt"


# Discord
cd /home/zyguy
sudo snap install discord