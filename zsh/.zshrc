# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# export ZSH="/home/b/.oh-my-zsh"
export ZSH="~/.oh-my-zsh"  # avoid hardcoded user names

ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions sudo colored-man-pages)

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
