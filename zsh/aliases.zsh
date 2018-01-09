alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias dl="cd ~/Downloads"
alias h="history"

# List all files colorized in long format
alias l="ls -lF -G"

# List all files colorized in long format, including dot files
alias la="ls -laF -G"

# List only directories
alias lsd="ls -lF -G | grep --color=never '^d'"
