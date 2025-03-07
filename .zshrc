PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '

if [[ $OSTYPE == darwin* ]]; then
    FPATH=/opt/local/share/zsh/site-functions/:$FPATH
    autoload -Uz compinit
    compinit
elif [[ $OSTYPE == linux* ]]; then
	autoload -Uz compinit
	compinit
fi


if [[ $OSTYPE == darwin* ]]; then
	source /opt/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
