# aliases
alias ll='ls -ahlF'
alias l='ls -CF'

# git related shortcut
alias undopush="git push -f origin HEAD^:master"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gca="git commit -a -m"
alias gcm="git commit -m"
alias gbd="git branch -D"
alias gst="git status -sb --ignore-submodules"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gp="git push"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git lg"
alias gpom="git pull origin master"

set -x GOPATH $HOME
set -gx PATH $PATH ~/bin
set -gx PATH /Applications/VICE/bin $PATH
set -gx PYTHONPATH $PYTHONPATH ="/usr/local/lib/python2.7/site-packages/"

tmux
