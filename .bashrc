# ==> To start using ble.sh, you can run "source /usr/share/blesh/ble.sh"
# ==> To load ble.sh by default in interactive sessions reliably,
# ==> Add this line at the top of your .bashrc:

# [[ $- == *i* ]] && source /usr/share/blesh/ble.sh --noattach

[[ $- != *i* ]] && return

[[ $(tty) =~ /dev/tty[0-9] ]] \
   && PS1='\[\e[91;7m\]\W\[\e[0m\]\\$ ' \
   || PS1=$' \[\e[38;5;33m\]\W \u03bb:\[\e[0m\] '

# export LANG=en_US.UTF-8
export PATH=$PATH:/home/toilethead/.local/bin/

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

export VISUAL=emacs
export EDITOR=nvim
export MANPAGER='nvim +Man!'

shopt -s checkwinsize

# blesh
# ==> Add this line at the bottom of your .bashrc:
# [[ ${BLE_VERSION-} ]] && ble-attach
# ==> Documentation available at: https://github.com/akinomyoga/ble.sh/wiki
