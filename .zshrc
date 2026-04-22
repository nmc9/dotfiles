# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="vim"

## SmartWaiver configuration
[[ -f "$HOME/.config/private" ]] && source "$HOME/.config/private"
export SW=$HOME/Documents/code/sw-env
source $SW/.bash_aliases


## NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# ENABLE_CORRECTION="true"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# GTK OPEN FIREFOX FIX
export GTK_DEBUG=interactive

# ANDROID SDK
export ANDROID_HOME=/home/ncaruso/Android/Sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias code="cd ~/Documents/code"
alias swcode="cd $SW/repositories"
alias tools="cd ~/tools"
alias important="cd ~/Documents/important"
alias dockerup="systemctl start docker"
alias dockerdown="systemctl stop docker"
alias vsail="./vendor/bin/sail"
alias vvendor="./vendor/bin/"
alias toolv="sudo update-alternatives --config"
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias killzscaler='pgrep -f zscaler && sudo kill $(pgrep -f zscaler)'

alias sshnext="ssh 10.21.12.213"
alias sshside="ssh 10.21.12.197"
alias sshcron="ssh 10.21.28.25"

# Open Websites in Default Browser
alias inotes="xdg-open https://togetherwork.atlassian.net/wiki/spaces/~712020868491d99e0a40ab904df04b54a4604d/pages/10355409936/What+Stuff+Is 2> /dev/null"
alias ijira="xdg-open https://togetherwork.atlassian.net/jira/software/c/projects/SW/boards/54 2> /dev/null"
alias ideploy="xdg-open https://togetherwork.atlassian.net/wiki/spaces/3PD/pages/10202480922/Deployment+on+Staging 2> /dev/null"
alias itempo="xdg-open https://togetherwork.atlassian.net/plugins/servlet/ac/io.tempo.jira/tempo-app 2> /dev/null"
alias iapi="xdg-open https://api.smartwaiver.com/docs/v4/ 2> /dev/null"
alias vpn="sudo openvpn --config ~/.config/vpn/default.ovpn > /tmp/openvpn.log 2>&1 &"

# Amazon AWS Vars
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1


# File990 Stuff
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/home/ncaruso/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/ncaruso/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
