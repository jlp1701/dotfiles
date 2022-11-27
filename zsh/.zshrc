# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/jlp/.oh-my-zsh"
# export ZSH="~/.oh-my-zsh"  # avoid hardcoded user names

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions colored-man-pages thefuck zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

### custom environment variables
export __LINUX__=1

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### fzf settings ###
# enable keybindings
# CTRL-T: Paste selected files and dirs onto cmd line
# CTRL-R: Search and paste from history
# ALT-C: cd into the selected dir
source /usr/share/doc/fzf/examples/key-bindings.zsh
# enable fuzzy auto-completions
source /usr/share/doc/fzf/examples/completion.zsh

### some PATH stuff ###
export PATH=$PATH:/opt/gradle/gradle-7.4.1/bin
export PATH=$PATH:/opt/node/node-v16.13.2-linux-x64/bin

### custom functions ###
function venv() {source venv/bin/activate}
function git_set_user() {
    if [[ $# -ne 2 ]]; then
        echo "Illegal number of parameters: $#. Expected 2: user.name, user.email"
    else
        git config user.name "$1";
        git config user.email "$2"
    fi
    }
