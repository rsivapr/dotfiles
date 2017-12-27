# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# Pull
alias gl='git pull --prune'
alias gup='git-up'
alias greb='git fetch upstream; git rebase upstream/master'

# Diff
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

# Staging
alias ga='git add'
alias gaa='git add --all'
alias gap='git add -p'

# Commit
alias gc='git commit'
alias gca='git commit -a'
alias gcam='git commit -a -m'
alias gac='git add -A && git commit -m'

# Checkout
alias gco='git checkout'
alias gcob='git checkout -b'

# Branch
alias gcb='git copy-branch-name'
alias gb='git branch'

# Push
alias gp='git push origin HEAD'
alias gpub='git push -u origin $(git branch-name)'

# Status/Logging
alias gs='git status -sb'
alias gwtf='git-wtf'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gbrowse='gitit'

# Local Cleanup
alias gcup='gup && git-local-cleanup'

# Undo
alias gundo='git-undo'
