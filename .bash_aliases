alias gs='git status'
alias gaa='git add -A'
alias sites='cd ~/Sites'

alias r='ranger'
# alias weather='curl wttr.in'
alias home='cd ~/'

alias bashedit='vim ~/.bashrc'
alias bashrefresh='source ~/.bashrc'
alias aedit='vim ~/.bash_aliases'
alias arefresh='source ~/.bash_aliases'
alias vedit='vim ~/.vimrc'

# get disk usage for all directories inside current directory
alias dud='du -sh ./*/'
# show disk usage for all drives
alias disks='df -h --type=ext4'

alias publicip='wget http://ipinfo.io/ip -qO -'
alias x='exit'

# git

alias gits='git status'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias grm='git rm'
alias grma='git rm -A'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gch='git checkout '
alias gc='git commit -m'
alias gm='git merge'
alias gd='git diff'
alias grv='git checkout -- '
alias gdt='git difftool'

# ssh
alias htpc="ssh benjamin@192.168.1.12"

# email
alias mutt='neomutt'

# python
alias python='python3'

alias lll='ll | less'

alias benwas='cd ~/Sites/benwas.com'

# choose a new wallpaper
alias wprefresh='feh --bg-fill -z ~/Wallpapers/'

# set screen brightness (add a value between 0 and 1 to the end of this command)
# example: brightness 0.5
alias brightness='xrandr --output LVDS-0 --brightness'

# shorten `apropos` command
alias apro='apropos'
