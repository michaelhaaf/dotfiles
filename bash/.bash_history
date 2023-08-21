git clone https://github.com/edwardtufte/et-book
just update
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
kitty
rpm-ostree install kitty kvantum
just update
rpm-ostree status
flatpak install org.kde.KStyle.Kvantum
mkdir repositories
cd repositories/
ll
ls
ls -a
git clone https://github.com/vinceliuice/Layan-kde.git
sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
pkill firefox
ps -aux | grep firefox
ll
just update
ll
rpm-ostree status
cd .mozilla/
ll
cd firefox/
ll
just update
echo $WAYLAND_DISPLAY 
uname -a
flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
flatpak remote-add --if-not-exists kdeapps --from https://distribute.kde.org/kdeapps.flatpakrepo
flatpak update
flatpak run org.mozilla.firefox 
flatpak run --verbose org.mozilla.firefox 
ll .mozilla/
ll .mozilla/firefox/
flatpak override --user --filesystem=~/.mozilla org.mozilla.firefox
flatpak override --user --filesystem=~/.librewolf io.gitlab.librewolf-community
man firefox
flatpak run --verbose org.mozilla.firefox 
flatpak run --verbose org.mozilla.firefox -P home
distrobox create -i ghcr.io/ublue-os/boxkit -n boxkit
pass
starship
btop
apk install bat exa
apk --help
apk add bat exa lsd delta dust duf fd ag jq 
sudo apk add bat exa lsd delta dust duf fd ag jq 
sudo apk add bat exa delta dust fd jq 
sudo apk add neovim pass
vim --version
nvim --verion
nvim --version
sudo apk add fuzzel tofi bemenu
sudo apk add wtype wl-clipboard
sudo apk add libnotify pass-otp xdg-utils scdoc
curl -LO https://git.sr.ht/~ayushnix/tessen/refs/download/v2.2.1/tessen-2.2.1.tar.gz
tar xvzf tessen-2.2.1.tar.gz 
cd tessen-2.2.1/
sudo make install
tessen
just --help
just list
just --list
cd ~/
just --list
just --choose
just --list --unstable
echo $SHELL
atuin
bat .bashrc 
curl https://raw.githubusercontent.com/rcaloras/bash-preexec/master/bash-preexec.sh -o ~/.bash-preexec.sh
echo '[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh' >> ~/.bashrc
bat .bashrc 
echo 'eval "$(atuin init bash)"' >> ~/.bashrc
bat .bashrc 
source .bashrc 
vim .bashrc 
ll -a
ls -a
exa
exa -a
exa -la
bat .bashrc 
vim .bash-preexec.sh 
vim .config/atuin/config.toml
vim .bashrc 
direnv
vim .bashrc 
source .bashrc 
ll
ls
mv GradingUtilities/ repositories/
ls
mkdir test-project
cd test-project/
echo ${FOO-nope}
echo export FOO=foo > .envrc
direnv allow .
echo ${FOO-nope}
cd ../
echo ${FOO-nope}
rm -rf test-project/
vim .bashrc 
source .bashrc 
ll
ls
touch .config/starship.toml
vim .config/starship.toml 
ls
ll
vim .config/starship.toml 
ll
ls
ls -l
starship preset tokyo-night -o ~/.config/starship.toml
ll
ls
vim .config/starship.toml 
distrobox enter boxkit
ll
mv 1T6-F22/ 2W6-W23/ 5A6-F23/ DBA-W23/ repositories/
ll
mv laboratorium/ pandoc-rss/ pdsite/ pttk/ reveal.js/ slide-decks/ teaching-homepage/ repositories/
rm -rf tessen-2.2.1*
ll
ll -a
cat .bashrc 
just --chose
just --choose
just
vim .justfile 
cat /usr/share/ublue-os/just/nvidia.just 
just setup-firefox-flatpak-vaapi-nvidia 
just test-cuda 
just
just fixscreenshare 
direnv
unzip Downloads/FiraMono.zip 
just update
xdg-settings get default-web-browser 
htop
just update
cd .var/app/org.mozilla.firefox/.mozilla/
ll
cd firefox/
ll
vim profiles.ini 
vim installs.ini 
cd .mozilla/
ll
cd firefox/
ll
vim profiles.ini 
rm -rf mo3mbsmr.home/ n59n28g8.work/ 
cd .mozilla/firefox/
ll
flatpak run --verbose org.mozilla.firefox -P home
ll .local/share/flatpak/
ll .local/share/flatpak/overrides/
ll .local/share/flatpak/overrides/org.mozilla.firefox 
bat .local/share/flatpak/overrides/org.mozilla.firefox 
cat .local/share/flatpak/overrides/org.mozilla.firefox 
cd .var/app/org.mozilla.firefox/
ll
ll .mozilla/
ll
cd .mozilla/firefox/
ll
vim profiles.ini 
cd .var/app/org.mozilla.firefox/.mozilla/firefox/
ll
vim profiles.ini 
vim installs.ini 
rm installs.ini 
cd mo3mbsmr.home/
ll
rm lock 
ll
cd ../
cd n59n28g8.work/
ll
starship preset pastel-powerline -o ~/.config/starship.toml
ll
ls
rm FiraMonoNerdFont*
ll
ls
rm readme.md 
ll
vim .config/starship.toml 
ll
ls
cd ../
cd michael/
ll
ls
ls -l
cd dotfiles/
ll
ls
ls -al
cd ../
ls -al
nvim .bash*
vim .bash_profile 
sudo apk add zsh
echo $SHELL
ll
vim .bashrc 
source .bashrc 
pass
source .bashrc 
echo $PASSWORD_STORE_DIR 
ls .local/share/password-store/
pass
cd ~/.local/share/password-store/
ls
[ass
pass
source .bashr
source .bashrc
echo $GNUPGHOME 
pass
sudo apk gnupg
sudo apk install gnupg
sudo apk add gnupg
pass
pass --help
distrobox enter boxkit 
tessen
echo $PASSWORD_STORE_DIR 
pass
pass init
man pass
gpg
chown -R $(whoami) ~/.local/share/gnupg/
find ~/.local/share/gnupg/ -type f -exec chmod 600 {} \;
find ~/.local/share/gnupg -type d -exec chmod 700 {} \;
gpg
gpg --list-keys
gpg --help
gpg --delete-keys
pass
vim .bashrc 
export PASSWORD_STORE_DIR="/var/home/michael/.local/share/password-store/"
pass
vim .bashrc
echo $XDG_CONFIG_DIRS 
echo $XDG_DATA_DIRS 
echo $XDG_DATA_HOME
exa -al
vim dotfiles/zsh/.zshenv 
vim .bashrc 
echo $HOME
ll
ls
vim .bashrc 
source .bashrc 
gpg --version
pass
source .bashrc 
vim .bashrc 
source .bashrc 
pass
echo $PASSWORD_STORE_DIR 
ls .local/share/password-store/
vim .bashrc 
source .bashrc 
pass
vim .bashrc 
source .bashrc 
pass
tessen
distrobox export tessen
distrobox-export tessen
distrobox-export --help
whic tessen
which tessen
distrobox-export -a tessen
distrobox-export -b tessen
distrobox-export --bin /usr/bin/tessen --export-path $HOME/.local/bin
mkdir .local/bin
distrobox-export --bin /usr/bin/tessen --export-path $HOME/.local/bin
pass personal/github 
pass otp personal/github
cb
just update
ll
