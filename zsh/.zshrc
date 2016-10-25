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
    connect lido2 $LIDO_HOME ~/Cluster/lido/home
    connect lido2 $LIDO_DATA ~/Cluster/lido/data
}

madison() {
    connect icpub $MADISON_HOME ~/Cluster/madison/home
    connect icdata $MADISON_DATA ~/Cluster/madison/data
}

phido() {
    connect phido2 $PHIDO_HOME ~/Cluster/phido/home
    connect phido2 $PHIDO_DATA ~/Cluster/phido/data
}

function activate_python2 {
  # Function to deactivate
  function deactivate {
  # Restore original state
    if [ ! -z "$_OLD_PATH" ]; then
      export PATH=${_OLD_PATH}
      export PS1=${_OLD_PS1}
      unset _OLD_PATH
      unset _OLD_PS1
      # Also remove this function from the scope
      unset -f deactivate
    fi
    }
  # If we are already running an active py2 environment
  deactivate 
  # Save old env vars
  _OLD_PATH=${PATH}
  _OLD_PS1=${PS1}
  # Set new path on top of all
  export PATH=${HOME}/Library/Python/2.7/bin:${PATH}
  # Indicate that we are in the system python environment
  export PS1="(SysPy2) $PS1"
  }

function activate_root5 {
  cd /Users/philipp/Software/root_5.34.36/build/
  source bin/thisroot.sh
  cd $HOME
  }

function activate_root6 {
  cd /Users/philipp/Software/root_6.06.08/
  source bin/thisroot.sh
  cd $HOME
  }

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
# rsync with progress and svn/git excluded
alias beam="rsync -avz --progress --exclude=.svn --exclude=.git --exclude=.DS_Store"

## workflow shortcuts
alias connect_notebook="ssh -L2221:localhost:2221 iccobalt" 
alias todo="vim $THESIS/notes/README.md"
alias toread="open $HOME/Dropbox/College/Physics/Neutrino\ Physics\ -\ Introduction\ -\ CERN.pdf"
alias notes="jupyter notebook $THESIS/notes/source"
alias open_notes="cd $THESIS/notes/ && make html && open build/html/index.html"
alias finish="cd $THESIS/scripts/; git status"
