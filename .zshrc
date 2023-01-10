#XDGPaths
export ANDROID_HOME="$XDG_DATA_HOME"/android
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
export XDG_RUNTIME_DIR=/run/user/$UID
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export KDEHOME="$XDG_CONFIG_HOME"/kde
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export DVDCSS_CACHE="$XDG_DATA_HOME"/dvdcss
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export WINEPREFIX="$XDG_DATA_HOME"/wine
export WINEPREFIX32="$XDG_DATA_HOME"/wine32
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export GOPATH="$XDG_DATA_HOME"/go
export GEM_HOME="${XDG_DATA_HOME}"/gem
export GEM_SPEC_CACHE="${XDG_CACHE_HOME}"/gem
export PYTHONSTARTUP="/etc/python/pythonrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/.local/bin:$HOME/.dotnet:$HOME/.npm-global/bin:/var/lib/flatpak/exports/bin:$GEM_HOME/ruby/2.7.0/bin:$HOME/.dotnet/tools:$GOPATH/bin
export DOTNET_ROOT=$(dirname $(realpath $(which dotnet)))
export XR_RUNTIME_JSON=/usr/local/share/openxr/1/openxr_monado.json
#export LD_LIBRARY_PATH=$HOME/.local/lib:$LD_LIBRARY_PATH
#export PKG_CONFIG_PATH=$HOME/.local/lib/pkgconfig:$PKG_CONFIG_PATH

#export VR_OVERRIDE=$HOME/git-third/OpenOVR/build
export PRESSURE_VESSEL_FILESYSTEMS_RW=/run/user/1000/monado_comp_ipc
export WINEDLLPATH=$WINEDLLPATH:/opt/discord-rpc/bin64:/opt/discord-rpc/bin32

export COMMON_FLAGS="-march=native -O2 -pipe"
export CFLAGS=$COMMON_FLAGS
export CXXFLAGS=$COMMON_FLAGS
export FCFLAGS=$COMMON_FLAGS
export FFFLAGS=$COMMON_FLAGS
export MAKEOPTS="-j17"


export ENABLE_VKBASALT=0
#export SDL_VIDEO_FULLSCREEN_HEAD=1
export MANGOHUD=1
export MANGOHUD_DLSYM=0
export MANGOHUD_CONFIG="read_cfg,fps_limit=144"
#export GBM_BACKEND=nvidia-drm
#export __GLX_VENDOR_LIBRARY_NAME=nvidia

export bsltinstall=$HOME/.local
export bsltdeps=$HOME/git-third/basalt

export PROTON_HIDE_NVIDIA_GPU=0
export PROTON_ENABLE_NVAPI=1
export PROTON_ENABLE_NGX_UPDATER=1
export VKD3D_CONFIG=dxr,dxr11
export VKD3D_FEATURE_LEVEL=12_1
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
# DISABLE_AUTO_UPDATE="false"

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
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git golang screen vscode)

source $XDG_DATA_HOME/oh-my-zsh/oh-my-zsh.sh

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
alias zshconfig="nano $ZDOTDIR"
#alias ohmyzsh="nano ~/.oh-my-zsh"
alias etc-update="sudo etc-update"
#alias nuget="mono /usr/bin/nuget"
alias emerge='sudo emerge'
alias upgrade='sudo emerge --ask -uDU --with-bdeps=y @world'
alias update='sudo emerge --sync'
alias wine64="WINEPREFIX="$WINEPREFIX" WINEARCH=win64 wine64"
alias wine32="WINEPREFIX="$WINEPREFIX32" WINEARCH=win32 wine"
alias wine=wine64
alias cls="clear"
alias service="sudo rc-service"
alias pm-suspend="loginctl suspend"
alias halt="loginctl poweroff"
alias cpuinfo="cat /proc/cpuinfo"
alias gitpro="GIT_SSH_COMMAND='ssh -i ~/.ssh/id_rsa_pro -F /dev/null' git"
alias start-wayland="XDG_SESSION_TYPE=wayland dbus-run-session startplasma-wayland"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
alias svn="svn --config-dir $XDG_CONFIG_HOME/subversion"
alias nvidia-settings="nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings"

#alias modelconv
alias pmx2vrm='modelconv -physics -unlit "*" -autotpose "右腕,左腕" -format vrm -vrmconfig "$HOME/Documents/modelconv_vrmpresets/mmd.json'

alias scrot='scrot ~/Pictures/Screenshots/%b%d::%H%M%S.png'
## Alias VirtualMachines Passthou
alias vrdev="start-virtual-machine win10-vrdev"
alias work="start-virtual-machine win8.1"
alias gaming="start-virtual-machine win10-gaming --swap"
alias gaming-nohyper="start-virtual-machine win10-gaming-nohypervisor --swap"
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


# Custom MountPoints
#bwrap --ro-bind / / \
#      --bind $HOME/Documents/Obsidian/vault/🏝\ Spaces/Reviews/ $HOME/git/media-reviews/docs \
#      --dev /dev \
#      zsh

## Start shell with screen
if [[ -z "$STY" ]] && [[ ! "$(tty)" =~ ^("/dev/tty") ]]; then
   screen -xRR session_name
fi

