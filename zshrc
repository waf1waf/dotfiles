export ZSH=~/.oh-my-zsh
ZSH_THEME="steeef"
HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=1
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(
    docker
    docker-compose
    git
    history
    last-working-dir
    osx
    sudo
    tmux 
    web-search
    yum
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/z.sh

# User configuration

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export CDPATH=.:~:~/dev/mdavs:~/dev

alias tls='tmux ls'
alias tm='tmux attach'
alias svnst='svn status | grep -v ^X | grep -v "^    X" | grep -v "^$" | grep -v "^P"'
alias ips="ifconfig | grep 'inet ' | awk -F' ' '{print \$2}' | grep -v 127.0.0.1"

if [[ `uname` == 'Darwin' ]]
then
    export OSX=1
else
    export OSX=0
fi

if [[ $OSX -eq 1 ]]
then
    alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
elif [[ -f /bin/vim ]] then
    alias vim='/bin/vim'
elif [[ -f /usr/bin/vim ]] then
    alias vim='/usr/bin/vim'
fi

if [[ $OSX -eq 1 ]]
then
    alias docker='/Applications/Docker.app/Contents/Resources/bin/docker'
else
    alias docker='sudo /bin/docker'
fi

export EDITOR=vim

export M3_HOME=/usr/local/apache-maven
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

#alias nslookup='echo Use dig or host'
export ANDROID_HOME=/usr/local/opt/android-sdk
export CDPATH=$CDPATH:~/Downloads
export CDPATH=.:~/dev/mdavs/rpms:~/dev/mdavs/rpms/SOURCES:~/dev/mdavs/rpms/SOURCES/filters:$CDPATH
export CDPATH=$CDPATH:~/Docker
export CDPATH=$CDPATH:~/IdeaProjects

alias gprod='git pull --rebase origin dev'

alias vg='valgrind --leak-check=full'

alias ack='echo "Use ag"'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/scala/bin:$PATH"

alias root='sudo su -'
alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'


alias update='source ~/.zshrc'

export GRADLE_HOME=/opt/gradle/gradle-5.0
export PATH=$GRADLE_HOME/bin:$PATH
export MAVEN_HOME=/opt/maven
export PATH=$MAVEN_HOME/bin:$PATH

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_COLLATE=C
export LC_CTYPE=en_US.UTF-8

alias podman='sudo /bin/podman'
alias skopeo='sudo /bin/skopeo'
