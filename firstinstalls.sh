# Update & Upgrade

sudo apt update -y
sudo apt upgrade -y



# Vim and nvim installs, want to add my lua conf to here as well.
sudo apt install vim -y
sudo apt install neovim -y
## nvim dependencies && CMAKE
sudo apt install cmake
sudo apt install gettext -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
sudo make CMAKE_BUILD_TYPE=Release

## LazyVim Setup
rm -r ~/.config/nvim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git




# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Python & pip
sudo apt install python3-pip -y 

# NPM & Node
sudo apt install nodejs -y
sudo apt install npm -y

# GO
sudo snap install go --classic -y

# FREETDS
sudo apt install freetds-bin -y

# Beekeeper SQL client
# Install our GPG key
curl -fsSL https://deb.beekeeperstudio.io/beekeeper.key | sudo gpg --dearmor --output /usr/share/keyrings/beekeeper.gpg \
  && sudo chmod go+r /usr/share/keyrings/beekeeper.gpg \
  && echo "deb [signed-by=/usr/share/keyrings/beekeeper.gpg] https://deb.beekeeperstudio.io stable main" \
  | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list > /dev/null

# Update apt and install
sudo apt update && sudo apt install beekeeper-studio -y


sudo snap install beekeeper-studio


# Docker & Docker Desktop
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update -y
sudo apt-get install ca-certificates curl gnupg -y
sudo install -m 0755 -d /etc/apt/keyrings -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg -y

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y




# VSCode
sudo apt-get install wget gpg -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https -y
sudo apt update -y
sudo apt install code -y



# Cursor, this actually doesnt work but its a good reminder of what i need to knock out lol

wget https://www.cursor.so/cursor-0.12.0.Appimage
chmod +x cursor-0.8.5.AppImage
sudo apt-get install fuse -y
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
sudo snap install discord -y
