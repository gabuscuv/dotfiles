# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/.local/bin:$HOME/.dotnet:~/.npm-global/bin:/var/lib/flatpak/exports/bin:$HOME/.gem/ruby/2.5.0/bin

export XR_RUNTIME_JSON=/usr/share/openxr/1/openxr_monado.json

#export SDL_VIDEO_FULLSCREEN_HEAD=1
export MANGOHUD=1
export MANGOHUD_DLSYM=1

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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
plugins=(git)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias i3-config="nano ~/.config/i3/config"
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias etc-update="sudo etc-update"
alias emerge='sudo emerge'
alias upgrade='sudo emerge --ask -uDU --with-bdeps=y @world'
alias update='sudo emerge --sync'
alias wine64="WINEPREFIX="$HOME/.wine" WINEARCH=win64 wine64"
alias wine32="WINEPREFIX="$HOME/.wine32" WINEARCH=win32 wine"
alias wine=wine64
alias cls="clear"
alias service="sudo rc-service"
alias pm-suspend="sudo pm-suspend"
alias halt="loginctl poweroff"
alias cpuinfo="cat /proc/cpuinfo"
alias gitpro="GIT_SSH_COMMAND='ssh -i ~/.ssh/id_rsa_pro -F /dev/null' git"

if [[ -z "$STY" ]] && [[ ! "$(tty)" =~ ^("/dev/tty") ]]; then
   screen -xRR session_name
fi
## Alias VirtualMachines Passthou
alias vrdev="start-virtual-machine win10-vrdev"
alias work="start-virtual-machine win8.1"
alias gaming="start-virtual-machine win10-gaming"
alias gaming-nohyper="start-virtual-machine win10-gaming-nohypervisor"
alias zenmode="start-virtual-machine debian10-zenmode"

#if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "$HOME/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="$HOME/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

