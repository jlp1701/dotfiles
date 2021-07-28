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

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
function ffp() {firefox --private-window "$@" &}
function vpnup() {sudo openvpn --script-security 2 --config /etc/openvpn/ka-members-neu-linhir-190321.ovpn}
function venv() {source venv/bin/activate}
