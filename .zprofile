#!/bin/sh

# Profile file. Runs on login.

export PATH="$PATH:$HOME/.scripts"
export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="firefox"
export READER="zathura"
export BIB="$HOME/Documents/LaTeX/uni.bib"

. ~/.scripts/shortcuts.sh 2>/dev/null

[[ -f ~/.zshrc ]] && . ~/.zshrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start graphical server if i3 not already running.
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep -x i3 || exec startx
fi

# Switch escape and caps and use wal colors if tty:
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null
wal -Rn

VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR

#########################
# Restart tmux sessions #
#########################

tmux start-server
if [[ -z "$TMUX" ]]
then
  exec tmux attach -d -t daily
fi
