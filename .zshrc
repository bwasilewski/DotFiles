autoload -U promptinit; promptinit
prompt spaceship

# Git settings
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Generic aliases
alias ll='ls -lahFG'
alias zedit='sudo vim ~/.zshrc'
alias zrefresh='source ~/.zshrc'
alias python=python3                                  # default to python3
alias pip=pip3
alias vedit='vim ~/.vimrc'


# Git aliases
alias gits='git status'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gr='git rm'
alias gra='git rm -A'
alias gbd='git branch -D'
alias gpush='git push'
alias gpo='git push origin'
alias gpull='git pull'
alias grecent="git branch --sort=-committerdate --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:short)%(color:reset))'"
alias gch='git checkout '
alias gc='git commit -m'
alias gm='git merge'

alias home='cd ~/'
alias sites='cd ~/Sites/'
alias proj='cd ~/Projects'

# enable nvm and bash completion
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh"  ] && . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
export PATH="$(python3 -m site --user-base)/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
