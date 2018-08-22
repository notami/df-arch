
fzf_history() { zle -I; eval $(history | fzf +s | sed 's/ *[0-9]* *//') ; }; zle -N fzf_history 
fzf_killps() { zle -I; ps -ef | sed 1d | fzf -m | awk '{print $2}' | xargs kill -${1:-9} ; }; zle -N fzf_killps 
fzf_cd() { zle -I; DIR=$(find ${1:-*} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf) && cd "$DIR" ; }; zle -N fzf_cd 

export FZF_COMPLETION_TRIGGER=''
bindkey '^I' $fzf_default_completion
bindkey '^T' fzf-completion
bindkey '^F' fzf_history
bindkey '^Q' fzf_killps
bindkey '^E' fzf_cd

