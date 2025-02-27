PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
  fi
