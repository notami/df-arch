#
# ~/.zprofile
#

WINEARCH=win32

[[ -f ~/.zshrc ]] && . ~/.zshrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR


#########################
# Restart tmux sessions #
#########################

tmux start-server
if [[ -z "$TMUX" ]]
then
  exec tmux attach -d -t daily
fi
