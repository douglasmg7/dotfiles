# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH=/home/douglasmg7/.oh-my-zsh


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# source $ZSH/oh-my-zsh.sh

# User configuration
autoload -U colors && colors
export PS1="%{$fg[magenta]%}%n@%m %{$fg[yellow]%}%~%{$reset_color%} "
# export PS1="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
# map ctrl to caps-lock
# setxkbmap -option ctrl:nocaps
# Added by n-install (see http://git.io/n-install-repo).
# export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  
# export TERM=xterm-256color

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# no beep
setopt NO_BEEP

# If you type foo, and it isn't a command, and it is a directory in your cdpath, go there.
setopt auto_cd 

# ====== History ======
# History config.
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
# Save history commands.
export SAVEHIST=$HISTSIZE
# To prevent history from recording duplicated entries (such as ls -l entered many times during single shell session), you can set the hist_ignore_all_dups option.
setopt hist_ignore_all_dups
# A useful trick to prevent particular entries from being recorded into a history by preceding them with at least one space.
setopt hist_ignore_space
# Allow multiple terminal sessions to all append to one zsh command history.
setopt append_history 

# ====== Completion ======
# show completion menu on successive tab press. needs unsetop menu_complete to work.
setopt auto_menu 
setopt complete_in_word # Allow completion from within a word/phrase.

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="ls --color=auto -l"
alias ls="ls --color=auto"

# Default editor (to use sudoedit).
export EDITOR=vim
bindkey -e  # Restore key bind to emacs, because the command befor set it to vim.

# ssh-agent unit use this var.
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

HISTFILE="$HOME/.zsh_history"

# ====== Golang ======
export GOPATH="$HOME/code/go"

# ====== Project ecom  ======
export ECOMPATH="$HOME/code/go/src/github.com/douglasmg7/ecom/"

