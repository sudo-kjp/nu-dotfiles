export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/lebaron/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
  zsh-syntax-highlighting
  zsh-autosuggestions
  archlinux
  colored-man-pages
  colorize
  command-not-found
  pip
  python
  sudo
)

#Powerlevel9k Config

#source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir virtualenv vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status  command_execution_time  vi_mode)
POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
#POWERLEVEL9K_SHORTEN_DELIMITER=..
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B6'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460\uF460\uF460 "

source $ZSH/oh-my-zsh.sh

#Colors
WHITE=007
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg="$WHITE",bold
# Syntax highlighting plugin
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
#typeset -A ZSH_HIGHLIGHT_STYLES

#Spaceship config

#autoload -U promptinit; promptinit
 # prompt spaceship

# Colors

# RED=001
# GREEN=002
# YELLOW=003
# BLUE=004
# PURPLE=005
# CYAN=006
# WHITE=007


# SPACESHIP_PROMPT_ORDER=(
#   time          # Time stampts section
#   user          # Username section
#   host          # Hostname section
#   dir           # Current directory section
#   git           # Git section (git_branch + git_status)
#   node          # Node.js section
#   ruby          # Ruby section
#   golang        # Go section
#   docker        # Docker section
#   aws           # Amazon Web Services section
#   venv          # virtualenv section
#   kubecontext   # Kubectl context section
#   exec_time     # Execution time
#   line_sep      # Line break
#   char          # Prompt character
# )

# SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_PROMPT_SEPARATE_LINE=false
# SPACESHIP_USER_SHOW=always
# SPACESHIP_HOST_SHOW=always

# # Spaceship colors

# SPACESHIP_USER_COLOR=red
# SPACESHIP_HOST_COLOR=green
# SPACESHIP_DIR_COLOR=yellow
# SPACESHIP_GIT_BRANCH_COLOR=blue

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

#KJP aliases
#alias ls='ls --color=auto'

#Clear terminal
alias c='clear'

#Exit terminal
alias e='exit'

#Edit aliases file
alias edit_profile='vscodium ~/.zshrc'

#Reload this zsh file
alias reload_profile='. ~/.zshrc'

#Force Power Off
alias poweroff='sudo /sbin/shutdown -h now'

#External IP
alias myip='curl icanhazip.com'

#get the weather
alias weather='curl wttr.in/Hackettstown'

#change xdg-open to open
alias open='xdg-open'

#NordVPN client shortcuts
alias nordus='nordvpn d && nordvpn c us' #United States
alias norduk='nordvpn d && nordvpn c uk' #United Kingdom
alias nordch='nordvpn d && nordvpn c ch' #Switzerland
alias nst='nordvpn status'
alias nse='nordvpn settings'

# Import colorscheme from 'wal'
(cat /home/lebaron/.cache/wal/sequences &)

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

