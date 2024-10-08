#!/usr/bin/env zsh

# create symbol links for configuration files

if [[ ! -f ~/.vimrc ]]; then
	ln -s ~/dotfiles/.vimrc ~
	echo "created symbol link for .vimrc"
fi

if [[ ! -f ~/.zshrc ]]; then
	ln -s ~/dotfiles/.zshrc ~
	echo "created symbol link for .zshrc"
fi

if [[ ! -f ~/.gitconfig ]]; then
	ln -s ~/dotfiles/.gitconfig ~
	echo "created symbol link for .gitconfig"
fi

if [[ ! -f ~/.latexmkrc ]]; then
	ln -s ~/dotfiles/.latexmkrc ~
	echo "created symbol link for .latexmkrc"
fi

if [[ ! -f ~/.local/share/nvim/site/pack/packer/start/neoformat/autoload/neoformat/formatters/cpp.vim ]]; then
	ln -s ~/dotfiles/cpp-neoformatter.vim ~/.local/share/nvim/site/pack/packer/start/neoformat/autoload/neoformat/formatters/cpp.vim
	echo "created symbol link for cpp neoformatter"
else
	ln -fs ~/dotfiles/cpp-neoformatter.vim ~/.local/share/nvim/site/pack/packer/start/neoformat/autoload/neoformat/formatters/cpp.vim
	echo "cpp neoformatter existed, force linking to the one in dotfiles folder"
fi

if [[ ! -f ~/.oh-my-zsh/custom/themes/agnoster-customized.zsh-theme ]]; then
	ln -s ~/dotfiles/agnoster-customized.zsh-theme ~/.oh-my-zsh/custom/themes/agnoster-customized.zsh-theme
	echo "created symbol link for agnoster-customized theme"
fi


if [[ ! -d ~/.oh-my-zsh/custom/plugins/myhistory ]]; then
	ln -s ~/dotfiles/myhistory ~/.oh-my-zsh/custom/plugins/myhistory
	echo "created symbol link for myhistory plugin"
fi

if [[ ! -d ~/.oh-my-zsh/custom/plugins/mytimer ]]; then
	ln -s ~/dotfiles/mytimer ~/.oh-my-zsh/custom/plugins/mytimer
	echo "created symbol link for mytimer plugin"
fi

if [[ ! -d ~/.oh-my-zsh/custom/plugins/mydirhistory ]]; then
	ln -s ~/dotfiles/mydirhistory ~/.oh-my-zsh/custom/plugins/mydirhistory
	echo "created symbol link for mydirhistory plugin"
fi

ln -fs ~/dotfiles/pac.js ~/Library/Application\ Support/V2RayX/pac/pac.js

ln -fs ~/dotfiles/tex.vim ~/.local/share/nvim/site/pack/packer/start/neoformat/autoload/neoformat/formatters/tex.vim
ln -fs ~/dotfiles/.mylatexindent.yaml ~/.mylatexindent.yaml
ln -fs ~/dotfiles/.indentconfig.yaml ~/.indentconfig.yaml

#sioyek
ln -fs ~/dotfiles/sioyek/keys_user.config ~/Library/Application\ Support/sioyek/keys_user.config
ln -fs ~/dotfiles/sioyek/prefs_user.config ~/Library/Application\ Support/sioyek/prefs_user.config

installed_formulae=(`brew list --formulae`)
installed_casks=(`brew list --casks`)
function install(){
	cmd=$2
	if [[ "$1" == formula ]]; then
		if [[ $cmd == "python" ]] && [[ ${installed_formulae[(I)$cmd]} ]]; then
			echo "Python already installed, skip"
		elif [[ ${installed_formulae[(Ie)$cmd]} ]]; then
			echo "$cmd already installed, skip"
		else
			brew install "$cmd"
		fi
	else
		if [[ ${installed_casks[(Ie)$cmd]} ]]; then
			echo "$cmd already installed, skip"
		else
			brew install --cask --force $cmd
		fi
	fi
}


# formulae
formulae=(
bat
eza
fd
ffmpeg
figlet
fortune
fzf
gcc
git
llvm
lolcat
lua
luarocks
neovim
nnn
python
ripgrep
thefuck
tldr
vifm
yt-dlp
zoxide
)


# casks
casks=(
alt-tab
anki
calibre
google-chrome
iina
karabiner-elements
keycastr
mactex
macvim
mks
mpv
obs
pycharm-ce
qbittorrent
qq
rectangle
sioyek
squirrel
tex-live-utility
the-unarchiver
wechat
wpsoffice-cn
)

for formula in $formulae
do
		install formula $formula
done

for cask in $casks
do
		install cask $cask
done

