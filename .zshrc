# Prompt configuration
PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '

# Append homebrew to path (https://brew.sh)
export PATH="/opt/homebrew/bin:$PATH"

  if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi
