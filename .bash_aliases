# REVIEW
# Rlwrap
alias rlsbcl='rlwrap sbcl --noinform'
alias rlguile='rlwrap guile'

# alias ed='rlwrap ed -E -p "* "'

# Vidir
alias vidir='VISUAL=nvim vidir'
#-----------------------------------------------------

# GENERAL
# Update
alias myPac='sudo pacman -Syu && yay -Sua && sudo pacman -Fy && yay -Scc'

# alias myFlat='flatpak update && \
#    flatpak uninstall --unused && \
#    sudo flatpak override --filesystem=$HOME/.themes && \
#    sudo flatpak override --filesystem=$HOME/.icons && \
#    sudo flatpak override --filesystem=xdg-config/gtk-4.0 && \
#    flatpak override --user --filesystem=xdg-config/gtk-4.0'

# Color
eval $(dircolors)

# alias ls='ls --color=auto'
# alias la='ls -A --color=auto'
# alias ll='ls -AlhH --color=auto'

alias ls='eza'
alias la='eza -A'
alias ll='eza -AlhH'

alias grep='grep --color=auto'

# Less
#export LESS="-R --use-color -Ddr"
#export LESS_TERMCAP_mb=$'\e[1;31m'
#export LESS_TERMCAP_md=$'\e[1;33m'
#export LESS_TERMCAP_so=$'\e[01;44;37m'
#export LESS_TERMCAP_us=$'\e[01;37m'
#export LESS_TERMCAP_me=$'\e[0m'
#export LESS_TERMCAP_se=$'\e[0m'
#export LESS_TERMCAP_ue=$'\e[0m'
#export GROFF_NO_SGR=1

# SHORTCUTS TO CD

# ~
alias cdA='cd ~/Desktop'
alias cdC='cd ~/.config'
alias cdD='cd ~/Downloads'
alias cdL='cd ~/.local'

## ~/Desktop
alias cdAt='cd ~/Desktop/tst'
alias cdAtS='cd ~/Desktop/tst/scripts'
alias cdAtP='cd ~/Desktop/tst/projetos'

## ~/Downloads
alias cdDt='cd ~/Downloads/Telegram\ Desktop'

## ~/.local
alias cdLb='cd ~/.local/bin'
alias cdLa='cd ~/.local/appimage'

## ~/.config
alias cdCe='cd ~/.config/emacs'
alias cdCn='cd ~/.config/nvim'

## ~/arq
alias cdE='cd ~/arq/est'
alias cdF='cd ~/arq/fac'
alias cdJ='cd ~/arq/jo'
alias cdM='cd ~/arq/mul'
alias cdU='cd ~/arq/u'

### ~/arq/mul/
alias cdMc='cd ~/arq/mul/c'
alias cdMf='cd ~/arq/mul/f'
alias cdMs='cd ~/arq/mul/s'
alias cdMv='cd ~/arq/mul/v'

#### ~/arq/mul/c
alias cdMcT='cd ~/arq/mul/c/t'
alias cdMcY='cd ~/arq/mul/c/y'

#### ~/arq/mul/v
alias cdMvJ='cd ~/arq/mul/v/jogo'
alias cdMvO='cd ~/arq/mul/v/outro'
alias cdMvP='cd ~/arq/mul/v/programacao'

# Correction of the bd command
alias bd='. bd.sh -si'
#-----------------------------------------------------

# NVIM
# Shortcuts to nvim
alias v='nvim'

# Shortcuts to init.lua
alias vV='nvim ~/.config/nvim/init.lua'

# Shortcuts to bash_aliases
alias vA='nvim ~/.bash_aliases'

# Shortcuts to bashrc
alias vB='nvim ~/.bashrc'
#-----------------------------------------------------

# EMACS

# Shortcuts to emacs
alias e='emacs'

# Shortcuts to bash_aliases
alias eA='emacs ~/.bash_aliases'

# Shortcuts to bashrc
alias eB='emacs ~/.bashrc'

# Shortcuts to emacs
alias eE='emacs ~/.config/emacs/config.org'

# Shortcuts to scripts
alias eS='emacs ~/Desktop/tst/scripts'
#-----------------------------------------------------

# YAZI

# To exit to the last directory in yazi

function y() {
   local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
   yazi "$@" --cwd-file="$tmp"
   IFS= read -r -d '' cwd < "$tmp"
   [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
   rm -f -- "$tmp"
}
#-----------------------------------------------------

# SOURCE

# Source anything
alias s='source'

# Source .bash_aliases
alias sA='source ~/.bash_aliases'

# Source .bashrc
alias sB='source ~/.bashrc'
#-----------------------------------------------------

# ATALHOS

# tmux
alias t='tmux'

# zathura
alias za='zathura'

# mpv
alias mpvf='mpv --profile=fast'
alias m='mpv --really-quiet'

# fastfetch
alias Fc='clear && fastfetch -c ~/.config/fastfetch/config.jsonc'
alias Fa='clear && fastfetch -c ~/.config/fastfetch/ci.jsonc'
#-----------------------------------------------------

# SPECIFIC

# To pwd
alias p='pwd'

# Mpv with standalone window
alias mpvg='a(){ nohup mpv "$@" > /dev/null 2>&1 & }; a' 

# Function to make a directory and change into it
mkcd(){ mkdir -p "$1" && cd "$1";}

# To check the volume
# vol(){ pactl list sinks | grep 'Volume:';}
