# shortcuts
alias home='cd ~/'
alias sites='cd ~/Sites'


# quick bash editing
alias bashedit='vim ~/.bashrc'
alias bashrefresh='source ~/.bashrc'
alias aedit='vim ~/.bash_aliases'
alias arefresh='source ~/.bash_aliases'


# disk information
alias dud='du -sh ./*/'                  # get disk usage for all directories inside current directory
alias disks='df -h --type=ext4'          # show disk usage for all drives


# git
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gr='git rm'
alias gra='git rm -A'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gch='git checkout '
alias gc='git commit -m'
alias gm='git merge'
alias gd='git diff'


# apps
alias mutt='neomutt'
alias r='ranger'


# utilities
alias publicip='wget http://ipinfo.io/ip -qO -'
alias weather='curl wttr.in'

