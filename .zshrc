export ZSH=/home/enryu/.oh-my-zsh

ZSH_THEME="robbyrussell"


plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

alias reload="source ~/.zshrc"
alias vim="nvim"
alias gotop="gotop -p -c solarized"
alias gcc10="gcc-10"
alias g++10="g++-10"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/enryu/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/enryu/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/enryu/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/enryu/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

