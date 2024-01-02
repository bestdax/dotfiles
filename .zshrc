# If you come from bash you might have to change your $PATH.
export PATH=/opt/local/libexec/gnubin/:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH=~/mybin:$PATH

export PATH="/opt/homebrew/sbin:$PATH"

export CPLUS_INCLUDE_PATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster-customized"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
zstyle ':completion:*' completer _expand _approximate _complete _correct

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey "ç" fzf-cd-widget
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-you-should-use/you-should-use.plugin.zsh
source $(brew --prefix)/share/zsh-autopair/autopair.zsh
source $(brew --prefix)/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# settign for autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# settings for thefuck
eval $(thefuck --alias)


plugins=(git sudo macos compleat myhistory dirhistory git-auto-fetch gitignore
	ripgrep timer zoxide aliases zsh-interactive-cd)

source ~/.oh-my-zsh/plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Customized settings
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"
export PYTHONPATH=/opt/homebrew/bin//python3


alias pip=pip3
alias ui2py="python3 ui2py.py"
alias git='LANG=en_US.UTF-8 git'
alias subrename="python3 ~/dotfiles/subrename.py"
alias py=python3
alias python=python3
alias vim=nvim
alias vi=nvim
alias buildnhk=~/dotfiles/buildnhk.sh
alias dsq='ssh dax@192.168.31.24 -t "export PATH=/opt/bin:/opt/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin && /opt/bin/zsh -l"'
alias lwarp="lwarpmk print && lwarpmk html && lwarpmk limages"
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
# export CXX="/opt/homebrew/Cellar/llvm/16.0.0/bin/clang++"
export CXX="/opt/homebrew/bin/g++-13"
export CC="/opt/homebrew/bin/gcc-13"
alias rnm='python3 ~/dotfiles/myrename.py'
alias pyin='pip install'
alias brin='brew install'
alias ytd='yt-dlp -N 5'
export LC_ALL=zh_CN.UTF-8
alias ez="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias ls=eza

# use vim to edit command
set -o vi
# set vi-mode escape key to jk
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
export FCEDIT=nvim

# export NVM_DIR="$HOME/.nvm"

# proxy list
alias proxy='export all_proxy=socks5://127.0.0.1:1081'
alias unproxy='unset all_proxy'



export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview'
export ZVM_VI_EDITOR=nvim
export ZPLUG_HOME=/opt/homebrew/opt/zplug


figlet "HELLO DAX" | lolcat
cd ~/codes/
autopair-init
