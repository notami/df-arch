# Set personal aliases, overriding those provided by oh-my-zsh libs,              
# plugins, and themes. Aliases can be placed here, though oh-my-zsh               
# users are encouraged to define aliases within the ZSH_CUSTOM folder.            
# For a full list of active aliases, run `alias`.                                 
#                                                                                 
# Example aliases                                                                 
# alias zshconfig="mate ~/.zshrc"                                                 
# alias ohmyzsh="mate ~/.oh-my-zsh"                                               


#fix obvious typo's
alias cd..='cd ..'
alias sl="ls"
alias pdw="pwd"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

alias merge="xrdb -merge ~/.Xresources"

### general ###
alias cls="clear"                                                                 
alias la="ls -alG"                                                                
alias uls="cd /usr/local/share"                                                   
alias l.="ls -A | egrep '^\.'"      

alias xpp="xprop | grep -i 'class'" 
### config - (git alias) ###
alias cs="config status"
alias ca="config add"
alias cc="config commit -m"
alias cp="config push"
### dot files ###
alias v3="vim /home/notami/.i3/config"
alias vg="vim /home/notami/.config/ranger/rc.conf"
alias vr="vim /home/notami/.vimperatorrc"
alias vv="vim /home/notami/.vimrc"
alias vz="vim /home/notami/.zshrc"
alias vza="vim /home/notami/.oh-my-zsh/custom/alias.zsh"
### nav ###
alias www="cd /mnt/www/nginx/dev/"
alias wwn="cd /mnt/www/nginx/notes/articles"
alias wwr="cd /mnt/www/nginx/refDesk/"
alias wwt="cd /mnt/www/nginx/tv-home/"
### ssh ###
alias ssh.f="ssh notami@freenas.local"
alias ssh.d="ssh dbsaurer@dbsaurer.com"
### commands ###
alias scrimp="scrot -q 85 -d 5 screenshot.png && gimp screenshot.png &"
### iohyve ###
alias io="iohyve"
### rsync ###
alias rsdbsd="rsync -auvzhe ssh --progress dbsaurer@104.255.96.68:/home/dbsaurer/public_html/ /home/notami/Documents/MyDocuments/Client/DBS/dbsaurer.com/BU-DBS/LocalMirror-DBS/"
alias rsdbsf="rsync -ruvzhe ssh --progress "/home/notami/Documents/MyDocuments/Client/DBS/" "/mnt/Data/Docs/Client/DBS/""
alias rsl3d="rsync -auvzhe ssh --progress legacythree@104.255.96.68:/home/legacythree/public_html/ /home/notami/Documents/MyDocuments/Client/LegacyIII/legacythree.org/BU-L3/LocalMirror-L3/"
alias rsl3f="rsync -ruvzhe ssh --progress "/home/notami/Documents/MyDocuments/Client/LegacyIII/" "/mnt/Data/Docs/Client/LegacyIII/""
alias rsmhd="rsync -auvzhe ssh --progress miraclesupholstery@104.255.96.68:/home/miraclesupholstery/public_html/ /home/notami/Documents/MyDocuments/Client/MiraclesHappen/miraclesupholstery.com/BU-MH/LocalMirror-MH/"
alias rsmhf="rsync -ruvzhe ssh --progress "/home/notami/Documents/MyDocuments/Client/MiraclesHappen/" "/mnt/Data/Docs/Client/MiraclesHappen/""
alias rsold="rsync -auvzhe ssh --progress olnb@104.255.96.68:/home/olnb/public_html/ "/home/notami/Documents/MyDocuments/Client/One Love No Boundaries/olnb.org/BU-OLNB/LocalMirror-OLNB/""
alias rsolf="rsync -ruvzhe ssh --progress "/home/notami/Documents/MyDocuments/Client/One Love No Boundaries/" "/mnt/Data/Docs/Client/One Love No Boundaries/""

# Aliases for software managment
# pacman or pm
alias pmsyu="sudo pacman -Syu --color=auto"
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syu'
# pacaur or pc
alias pcsyu="pacaur -Syu"
# packer or pk
alias pks="packer -S"
alias pksn="packer -S --noconfirm --noedit"
alias pksyu="packer -Syu  --noconfirm --noedit"
alias tvstart="systemctl start teamviewerd.service"

# show log output
alias syslog="journalctl -p 3 -xb"
