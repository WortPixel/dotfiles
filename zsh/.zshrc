export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git, sublime)

source $ZSH/oh-my-zsh.sh

# User configuration
export LIDO_HOME="/home/uph504"
export LIDO_DATA="/data/uph504"
export MADISON_HOME="/home/pschlunder"
export MADISON_DATA="/data/user/pschlunder"
export PHIDO_HOME="/home/pschlunder"
export PHIDO_DATA="/fhgfs/users/pschlunder"


connect() {
    sshfs $1:$2 $3
}

lido() {
    connect lido2 $LIDO_HOME $THESIS/cluster/lido/home
    connect lido2 $LIDO_DATA $THESIS/cluster/lido/data
}

madison() {
    connect pub $MADISON_HOME $THESIS/cluster/madison/home
    connect data $MADISON_DATA $THESIS/cluster/madison/data
}

phido() {
    connect pub $PHIDO_HOME $THESIS/cluster/madison/home
    connect data $PHIDO_DATA $THESIS/cluster/madison/data
}

alias rapidminer="cd $RAPIDMINERSYS && ./scripts/RapidMinerGUI"
alias nb2="ipython2 notebook"
alias nb3="ipython notebook"


alias l="ls"
alias ll="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias h="history"
alias path="echo -e ${PATH//:/\\n}"
alias ping="ping -c 5"
# ask for confirmation
alias mv="mv -i"
alias cp="cp -i"
alias ln="ln -i"
alias root="root -l"