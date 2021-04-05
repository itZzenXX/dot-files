# bash prompt
neofetch

DEFAULT=$PS1
PS1="\[\033[0m\]\[\033[45m\]\[\033[45m\]\[\033[0m\][\[\033[47m\]\[\033[45m\] \w \[\033[45m\]\[\033[0m\]]\[\033[45m\]\[\033[0m\] \$ "

# interactive shell
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# vi mode
set -o vi

# ssh devuan alias
alias openbsd='ssh -p 55555 root@openbsd'

# ls alias
export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# rm/mv/cp alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# startx alias
alias startx="startx -- vt1"

# vim alias
alias nano='vim'

# monero alias
alias monero='monero-wallet-cli'

# doas alias
alias d='doas'
alias sudo='doas'
