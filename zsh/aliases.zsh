alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

# Shortcuts
alias dl="cd ~/Downloads"
alias h="history"

alias cat="bat"
alias ls="exa"
alias la="exa -laF -G"
alias help='tldr'
alias top="sudo htop" # alias top and fix high sierra bug
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"