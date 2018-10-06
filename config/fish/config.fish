status --is-login; and status --is-interactive; and exec byobu-launcher

set fish_greeting

set DEFAULT_USER $USER

set PATH $HOME/.local/bin $PATH

set -U FZF_LEGACY_KEYBINDINGS 0

alias l "ls"
alias ghci "stack ghci --"
alias ghc "stack ghc --"
alias runghc "stack runghc --"

set EDITOR vi
