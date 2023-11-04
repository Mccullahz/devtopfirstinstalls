# Update & Upgrade

sudo apt update
sudo apt upgrade
sudo apt install neovim


# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


# Python & pip
sudo apt install python3-pip

# NPM & Node
sudo apt install nodejs
sudo apt install npm

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



