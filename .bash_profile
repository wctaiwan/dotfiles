[ -z "$PS1" ] && return

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -z "${TMUX}" ]; then
	clear && cat /var/run/motd.dynamic && read && { tmux attach || tmux; }
fi
