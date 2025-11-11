# Lines configured by zsh-newuser-install

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/benjamin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export NVM_DIR="$HOME/.nvm"
# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# Load nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Load aliases
source "$HOME/.aliases"

# search history with ctrl+r
bindkey '^R' history-incremental-search-backward

# Auto-switch Node version when entering directory with .nvmrc
cd() {
  builtin cd "$@"
  if [[ -f .nvmrc ]]; then
    nvm use > /dev/null
  fi
}
cd .

fzv() {
  local file
  file=$(fzf --preview 'bat --style=numbers --color=always {} 2>/dev/null || cat {} 2>/dev/null | head -20' --preview-window=right:60%:wrap)
  [[ -n "$file" ]] && vim "$file"
}

PS1='%B%F{green}[%f%F{yellow}%n%f%F{green}@%f%F{blue}%m%f%F{green}]%f %F{#777777}%~%f %F{green}>%f%b '
