# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#######################
# #fix obvious typo's #
#######################
alias cd..='cd ..'
alias sl="ls"

##############################################################################
# ## Colorize the grep command output for ease of use (good for log files)## #
##############################################################################
alias pdw="pwd"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

####################
# #readable output #
####################
alias df='df -h'
alias merge="xrdb -merge ~/.Xresources"

###################
# ### general ### #
###################
alias cls="clear"
alias la="ls -alG" --color=auto
alias uls="cd /usr/local/share"
alias l.="ls -A | egrep '^\.'"
alias xpp="xprop | grep -i 'class'"

################################
# ### config - (git alias) ### #
################################
alias cs="config status"
alias ca="config add"
alias cc="config commit -m"
alias cp="config push"

#####################
# ### dot files ### #
#####################
alias v3="vim /home/notami/.config/i3/config"
alias vr="vim /home/notami/.config/ranger/rc.conf"
alias vm="vim /home/notami/.config/mutt/neomuttrc"
alias vn="vim /home/notami/.newsboat/config"
alias vp="vim /home/notami/.vimperatorrc"
alias vv="vim /home/notami/.vimrc"
alias vz="vim /home/notami/.zshrc ; source home/notami/.zshrc"
alias vza="vim /home/notami/.oh-my-zsh/custom/alias.zsh ; source ~/.oh-my-zsh/custom/alias.zsh"
alias vi3="vim /home/notami/.config/i3/config"

####################
# Calling All Apps #
####################
alias cat="bat"
alias mail="neomutt"
alias music="ncmpcpp"
alias clock="ncmpcpp -s clock"
alias viz="ncmpcpp -s visualizer"
alias nb="newsboat"
alias pp1="pipes.sh"
alias pp3="pipes.sh -t 3 -p 3 -f 30"
alias wall='wal -i ~/.config/variety/Favorites'
alias srr='sr -elvi | less'
alias hsw='history | grep --color=auto wal -i'
alias du="ncdu --color dark -x --exclude .git --exclude node_modules"
alias dus="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias mlv='/opt/mullvad-vpn/mullvad-vpn &; disown'
alias wfz='wpg -s $(wpg -l | fzf)'
alias rcp="rofi -modi 'clipboard:greenclip print' -show clipboard -run-command '{cmd}"
alias fcp="fzf-greenclip"
alias gcd="nohup greenclip daemon > /dev/null 2>&1 &"
alias tw3="torsocks w3m"

################
# Some aliases #
################
alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias trem="transmission-remote"
alias mkd="mkdir -pv"
alias rz="source ~/.zshrc"
alias ref="shortcuts.sh && source ~/.zshrc" # Refresh shortcuts manually and reload zshrc
alias pi="bash ~/.larbs/wizard/wizard.sh"

###############
# ### nav ### #
###############
alias www="cd /mnt/www/nginx/dev/"
alias wwn="cd /mnt/www/nginx/notes/articles"
alias wwr="cd /mnt/www/nginx/refDesk/"
alias wwt="cd /mnt/www/nginx/tv-home/"
alias gam="cd /home/notami/Documents/ArchMerge-Nemesis/"
alias gcf="cd /home/notami/.config"
alias catc="cat ~/.scripts/configs"
alias catf="cat ~/.scripts/folders"

###############
# ### ssh ### #
###############
alias ssh.f="ssh notami@freenas.local"
alias ssh.d="ssh dbsaurer@dbsaurer.com"
alias ssh.tv="ssh tv-am"
alias ssh.nid="ssh nid-8164-am"
alias ssh.kt="ssh nid-kt.local"

####################
# ### commands ### #
####################
alias scrimp="scrot -q 85 -d 5 screenshot.png && gimp screenshot.png &"
alias rebar="pkill -USR1 polybar"
alias usbbye='udisksctl unmount -b /dev/sdc1'
alias preview="fzf --preview 'bat --color 'always' {}'"

##################
# ### iohyve ### #
##################
alias io="iohyve"

################
# ### tmux ### #
###############
alias tmn="tmux new -s"
alias tma="tmux a -t"
alias tms="tmux list-sessions"
alias tmks="tmux kill-session -t"
alias tmrs="tmux source-file ~/.tmux/.tmux.rsync.conf"
alias restore="~/.scripts/tmux-s.sh restore"
alias daily="tma daily"

#################
# ### rsync ### #
#################
alias rsdbsd="rsync -auvzhe ssh --progress dbsaurer@104.255.96.68:/home/dbsaurer/public_html/ /home/notami/Documents/MyDocuments/Client/DBS/dbsaurer.com/BU-DBS/LocalMirror-DBS/"
alias rsdbsf="rsync -ruvzhe ssh --progress "/home/notami/Documents/MyDocuments/Client/DBS/" "/mnt/Data/Docs/Client/DBS/""
alias rsl3d="rsync -auvzhe ssh --progress legacythree@104.255.96.68:/home/legacythree/public_html/ /home/notami/Documents/MyDocuments/Client/LegacyIII/legacythree.org/BU-L3/LocalMirror-L3/"
alias rsl3f="rsync -ruvzhe ssh --progress "/home/notami/Documents/MyDocuments/Client/LegacyIII/" "/mnt/Data/Docs/Client/LegacyIII/""
alias rsmhd="rsync -auvzhe ssh --progress miraclesupholstery@104.255.96.68:/home/miraclesupholstery/public_html/ /home/notami/Documents/MyDocuments/Client/MiraclesHappen/miraclesupholstery.com/BU-MH/LocalMirror-MH/"
alias rsmhf="rsync -ruvzhe ssh --progress "/home/notami/Documents/MyDocuments/Client/MiraclesHappen/" "/mnt/Data/Docs/Client/MiraclesHappen/""
alias rsold="rsync -auvzhe ssh --progress olnb@104.255.96.68:/home/olnb/public_html/ "/home/notami/Documents/MyDocuments/Client/One Love No Boundaries/olnb.org/BU-OLNB/LocalMirror-OLNB/""
alias rsolf="rsync -ruvzhe ssh --progress "/home/notami/Documents/MyDocuments/Client/One Love No Boundaries/" "/mnt/Data/Docs/Client/One Love No Boundaries/""
alias rshome="rsync -aP --exclude-from=/var/tmp/ignorelist -e ssh /home/$USER/ notami@freenas.local:/mnt/vol2/Data/Archive/monid"

####################################
# Aliases for software managment #
####################################
# pacman or pm
alias pmsyu="sudo pacman -Syu --color=auto"
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syu && echo Update Complete! | figlet'
# pacaur or pc
alias pcsyu="pacaur -Syu"
alias pcsyua="yaourt -Syu --aur --noconfirm"
# packer or pk
alias pks="packer -S"
alias pksn="packer -S --noconfirm --noedit"
alias pksyu="packer -Syu  --noconfirm --noedit"
alias tvstart="systemctl start teamviewerd.service"
alias ckre="sudo python2.7 ~/.scripts/checkrestart.py"

#######################
# System Maintainence #
#######################
alias mw="~/.config/mutt/mutt-wizard.sh"
alias muttwizard="~/.config/mutt/mutt-wizard.sh"
alias progs="(pacman -Qet && pacman -Qm) | sort -u" # List programs I've installed
alias orphans="pacman -Qdt" # List orphan programs
alias sdn="sudo shutdown now"
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg

#####################
# # show log output #
#####################
alias syslog="journalctl -p 3 -xb"
alias pth='echo $PATH | tr ":" "\n" | nl'

######################
# CD Rip-MP3 Convert #
######################
alias cdck="cdparanoia -vsQ"
alias cdrip="cdparanoia -BZ"
alias cdrip+="cdparanoia -B"
alias mp3con="for t in track{01..21}*.wav; do lame $t; done"

#####################
# You Tube Download #
#####################
alias ytdl="youtube-dl -f best"
alias ytdla="youtube-dl -x --audio-format mp3"
alias ytdlp="youtube-dl -o --proxy socks://10.8.0.1:1080 "
alias ytdlap="youtube-dl -x --audio-format mp3 -i -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'"

##############
# TPB SEARCH #
##############
alias tpbs="clear && figlet -c TPB Search && ~/.scripts/tpb"

####################
# Search arch wiki #
####################
alias aw='arch-wiki'

#######
# UFW #
#######
alias ufw='sudo ufw'
alias ufwsv='sudo ufw status verbose'
alias ufwsn='sudo ufw status numbered'

################
# GLOBAL ALIAS #
################

# http://www.zzapper.co.uk/zshtips.html
alias -g ND='*(/om[1])'        # newest directory
alias -g NF='*(.om[1])'        # newest file
alias -g NO='&>|/dev/null'
alias -g P='2>&1 | $PAGER'
alias -g VV='| vim -R -'
alias -g L='| less'
alias -g M='| most'
alias -g C='| wc -l'
alias -g H='| head'
alias -g W='wal -i ~/.config/variety/Favorites'
alias -g T='| tail'
alias -g G='| grep --color=auto'
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"


