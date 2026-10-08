HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
setopt autocd
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_FIND_NO_DUPS
setopt CORRECT
setopt EXTENDED_GLOB
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt INTERACTIVE_COMMENTS
unsetopt beep
bindkey -v

PS1='%B%F{green}[%f%F{yellow}%n%f%F{green}@%f%F{blue}%m%f%F{green}]%f %F{#777777}%~%f %F{green}>%f%b '

zstyle ':compinstall' filename '/home/benjamin/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

autoload -Uz compinit
compinit

# Lazy-load nvm
export NVM_DIR="$HOME/.nvm"
nvm() {
  unset -f nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  nvm "$@"
}
node() { unset -f nvm node npm npx; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; node "$@"; }
npm() { unset -f nvm node npm npx; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; npm "$@"; }
npx() { unset -f nvm node npm npx; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; npx "$@"; }

# Load aliases
source "$HOME/.aliases"

# fzf key bindings (ctrl+r fuzzy history, ctrl+t file finder, alt+c cd into subdir)
source /usr/share/doc/fzf/examples/key-bindings.zsh

# Auto-switch Node version when entering directory with .nvmrc
chpwd() {
  if [[ -f .nvmrc ]]; then
    nvm use > /dev/null
  fi
}
chpwd

fzv() {
  local file
  file=$(fzf --preview 'bat --style=numbers --color=always {} 2>/dev/null || cat {} 2>/dev/null | head -20' --preview-window=right:60%:wrap)
  [[ -n "$file" ]] && vim "$file"
}

apt_update_reminder() {
  local days_threshold=7
  local apt_timestamp="/var/lib/apt/periodic/update-stamp"
              
  if [[ -f "$apt_timestamp"  ]]; then
    local last_update_epoch=$(stat -c %Y "$apt_timestamp")
    local current_epoch=$(date +%s)
    local days_since=$(( (current_epoch - last_update_epoch) / 86400  ))
                                                
    if [[ $days_since -ge $days_threshold  ]]; then
      echo "Reminder: It's been $days_since days since 'sudo apt update'"
      echo "Run: sudo apt update && sudo apt upgrade"
    fi
    else
      echo "⚠️  Unable to determine last apt update time"
  fi
}

apt_update_reminder

# Plugins (syntax highlighting must be last)
source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
