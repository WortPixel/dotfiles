export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git, sublime)

source $ZSH/oh-my-zsh.sh

# User configuration
pushd $(brew --prefix root) >/dev/null; . libexec/thisroot.sh; popd >/dev/null

export ARCHFLAGS="-arch x86_64"
export PATH="/usr/local/texlive/2015/bin/x86_64-darwin:/usr/texbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/Android-SDK/platform-tools:$HOME/Software/pebble-dev/PebbleSDK-3.4/bin"
export RAPIDMINERSYS="$HOME/Software/rapidminer5.3"
export JAVA_HOME=$(/usr/libexec/java_home)
export LD_LIBRARY_PATH=${JAVA_HOME}/jre/lib/amd64
export MAX_JAVA_MEMORY=4096
export SVN=http://code.icecube.wisc.edu/svn
export PYTHONPATH=$HOME/College/PhD/scripts/python_libraries:$PYTHONPATH
export THESIS=$HOME/College/PhD/
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

alias minecraft="java -Xmx2048M -Xms2048M -jar minecraft_server.1.8.1.jar nogui"

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

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
