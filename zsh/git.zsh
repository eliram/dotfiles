# git aliases
alias g='git'
# Status (gw)
alias gws='git status --short'
alias gwS='git status'
# Branch (b)
alias gb='git branch'
alias gbc='git checkout -b'
# Commit (c)
alias gc='git commit --verbose'
alias gca='git commit --verbose --all'
alias gcm='git commit --message'
alias gco='git checkout'
alias gcp='git cherry-pick --ff'
# Fetch (f)
alias gf='git fetch'
# Push (p)
alias gp='git push'
# Rebase (r)
alias gr='git rebase'
# Stash (s)
alias gs='git stash'
alias gsa='git stash apply'
alias gsx='git stash drop'
alias gsX='git-stash-clear-interactive'
alias gsl='git stash list'
alias gsp='git stash pop'
# alias ga='git add'
# alias gb='git branch'
# alias gl='git pull'
# alias gp='git push'
# alias gd='git diff'
# alias gdc='git diff --cached'
# alias gs='git s'
# alias gss='git stash save'
# alias gsp='git stash pop'
# alias gmv='git mv'
# alias grm='git rm'
# alias grn='git-rename'
# alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# # alias git-amend='git commit --amend -C HEAD'
# alias git-undo='git reset --soft HEAD~1'
# alias git-count='git shortlog -sn'
# alias git-undopush="git push -f origin HEAD^:master"
# # git root
# alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

# alias sub-pull='git submodule foreach git pull origin master'

# function give-credit() {
#     git commit --amend --author $1 <$2> -C HEAD
# }

# # a simple git rename file function
# # git does not track case-sensitive changes to a filename.
# function git-rename() {
#     git mv $1 "${2}-"
#     git mv "${2}-" $2
# }

# function g() {
#     if [[ $# > 0 ]]; then
#         # if there are arguments, send them to git
#         git $@
#     else
#         # otherwise, run git status
#         git s
#     fi
# }
