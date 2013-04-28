# Home and local
export PATH=$PATH:~/bin:.
export PATH=/usr/local/bin:$PATH:/usr/local/sbin

# Android
export ANDROID_HOME=/home/marc/dev/android-sdk-linux/
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

HISTSIZE=100000; export HISTSIZE

# Git support for cmd line
if [ -f /etc/bash_completion.d/git-completion.bash ]; then
   . /etc/bash_completion.d/git-completion.bash
fi

# Git shell prompt
if [ -f /etc/bash_completion.d/git-prompt.bash ]; then
   . /etc/bash_completion.d/git-prompt.bash
fi
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Functions
if [ -f ~/.bash_functions ]; then
   . ~/.bash_functions
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.profile
