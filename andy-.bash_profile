# Home and local
export PATH=$PATH:~/bin:.
export PATH=/usr/local/bin:$PATH:/usr/local/sbin

# Android
export ANDROID_HOME=/Users/XXXXXXXX/Applications/android-sdk-mac_x86
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Git
export GIT_HOME=/usr/local/git
export PATH=$GIT_HOME/bin:$PATH


# Python
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages

# Go
export GOROOT=/usr/local/Cellar/go/1.0.3
export PATH=$PATH:/usr/local/go/bin

# Ruby
export PATH=~/.rbenv/shims:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

HISTSIZE=100000; export HISTSIZE

export CLICOLOR=true
export TERM=xterm-color

#export EDITOR=mvim

# Aliases
alias sl=ls
alias ll='ls -l'
alias la='ls -AF'
alias l='ls -CF'
alias c=clear
alias d=date
alias 1='cd ..'
alias 2='cd ../..'
alias 3='cd ../../..'
alias 4='cd ../../../..'
alias 5='cd ../../../../..'
#alias wget="curl -O"
alias d9=draw9patch
alias v='mvim --remote-tab'
alias bup="brew update && brew upgrade && brew cleanup"

if [ -f `brew --prefix`/etc/bash_completion ]; then
   . `brew --prefix`/etc/bash_completion
fi

if [ -f `brew --prefix`/Library/Contributions/brew_bash_completion.sh ]; then
  . `brew --prefix`/Library/Contributions/brew_bash_completion.sh
fi

# Git support for cmd line
#source ~/.git-completion.bash
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
   . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# Git shell prompt
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.bash ]; then
   . `brew --prefix`/etc/bash_completion.d/git-prompt.bash
fi
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# Functions
if [ -f ~/.bash_functions ]; then
   . ~/.bash_functions
fi
