export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew, git, osx, pip, sublime, web-search)

source $ZSH/oh-my-zsh.sh

# User configuration
export LIDO_HOME="/home/uph504"
export LIDO_DATA="/data/uph504"
export MADISON_HOME="/home/pschlunder"
export MADISON_DATA="/data/user/pschlunder"
export PHIDO_HOME="/home/pschlunder"
export PHIDO_DATA="/fhgfs/users/pschlunder"

# wrapper for sshfs for easy connecting
connect() {
    sshfs $1:$2 $3
}

lido() {
    connect lido2 $LIDO_HOME $THESIS/cluster/lido/home
    connect lido2 $LIDO_DATA $THESIS/cluster/lido/data
}

madison() {
    connect icpub $MADISON_HOME $THESIS/cluster/madison/home
    connect icdata $MADISON_DATA $THESIS/cluster/madison/data
}

phido() {
    connect phido2 $PHIDO_HOME $THESIS/cluster/phido/home
    connect phido2 $PHIDO_DATA $THESIS/cluster/phido/data
}

alias rapidminer="cd $RAPIDMINERSYS && ./scripts/RapidMinerGUI"
alias nb="ipython notebook"
alias nb3="source activate p3 && juypter notebook"
alias cobalt="ssh -t pub ssh cobalt"


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
# silent root start-up
alias root="root -l"
# rsync with progress and svn/git excluded
alias beam="rsync -avz --progress --exclude=.svn --exclude=.git --exclude=.DS_Store"

## workflow shortcuts
alias connect_notebook="ssh -t -t -L2221:localhost:2221 pschlunder@pub2.icecube.wisc.edu 'ssh -L2221:localhost:2221 pschlunder@cobalt04.icecube.wisc.edu'"
alias todo="vim $THESIS/notes/README.md"
alias toread="open /Users/philipp/Dropbox/College/Physics/Neutrino\ Physics\ -\ Introduction\ -\ CERN.pdf"
alias notes="jupyter notebook $THESIS/notes/source"
alias open_notes="cd $THESIS/notes/ && make html && open build/html/index.html"
alias finish="cd $THESIS/scripts/; git status"
