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
alias d9=draw9patch
alias v='mvim --remote-tab'

# crawl
alias ct='crawl-tiles &'
alias cc='cd ~/.crawl/saves && git ci -am "a" && cd $OLDPWD'
alias cr='cd ~/.crawl/saves && git reset HEAD --hard && cd $OLDPWD'