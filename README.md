## Config files

### Install
```bash
cd ~
git clone https://github.com/douglasmg7/dotfiles.git

# atom.io editor config
mkdir ~/.atom && cd ~/.atom
ln -s ~/dotfiles/atom/config.cson config.cson
ln -s ~/dotfiles/atom/init.coffee init.coffee
ln -s ~/dotfiles/atom/keymap.cson keymap.cson
ln -s ~/dotfiles/atom/package.list package.list
ln -s ~/dotfiles/atom/snippets.cson snippets.cson
ln -s ~/dotfiles/atom/styles.less styles.less
ln -s ~/dotfiles/atom/terminal-commands.json terminal-commands.json
apm install --packages-file ~/.atom/package.list

# i3 windows manager
mkdir ~/.i3 && cd ~/.i3
ln -s ~/dotfiles/i3/config config

# dwm windows manager
mkdir aur && cd aur
git clone https://aur.archlinux.org/dwm-git.git
makepkg -si
ln -s ~/dotfiles/dwm/config.h ~/aur/dwm-git/src/dwm/config.h
makepkg -fi

# st terminal emulator
cd aur
git clone https://aur.archlinux.org/st-git.git
makepkg -si
ln -s ~/dotfiles/st/config.h ~/aur/st-git/src/st/config.h
makepkg -fi

# others programs config
ln -s ~/dotfiles/babelrc .babelrc
ln -s ~/dotfiles/bashrc .bashrc
ln -s ~/dotfiles/eslintrc.json .eslintrc.json
ln -s ~/dotfiles/gitconfig .gitconfig
ln -s ~/dotfiles/ideavimrc.json .ideavimrc.json
ln -s ~/dotfiles/jshintrc .jshintrc
ln -s ~/dotfiles/tmux.conf .tmux.conf
ln -s ~/dotfiles/vimrc .vimrc
ln -s ~/dotfiles/xinitrc .xinitrc
ln -s ~/dotfiles/Xresources .Xresources
ln -s ~/dotfiles/zshrc .zshrc
# Map leftctrl to capslook keyboard
cd /etc/udev/hwdb.d
ln -s ~/dotfiles/70-keyboard-my.hwdb 70-keyboard-my.hwdb
systemd-hwdb update
udevadm trigger
```
