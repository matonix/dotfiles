status --is-login; and status --is-interactive; and exec byobu-launcher

set fish_greeting

set DEFAULT_USER $USER

set PATH $HOME/.local/bin $PATH
set PATH /home/linuxbrew/.linuxbrew/bin $PATH
set PATH $HOME/go/bin $PATH
set PATH /home/linuxbrew/.linuxbrew/opt/go/libexec/bin $PATH

# for fisher v3
# details: https://github.com/jorgebucaran/fisher/issues/448

if functions -q fish_user_key_bindings
    if not functions -q _keybinder_fish_user_key_bindings
        functions -c fish_user_key_bindings _keybinder_fish_user_key_bindings
    end
end

test -z "$XDG_CONFIG_HOME"; and set XDG_CONFIG_HOME ~/.config

function fish_user_key_bindings
    for file in $XDG_CONFIG_HOME/fish/conf.d/*_key_bindings.fish
        source $file
    end
    if functions -q _keybinder_fish_user_key_bindings
        _keybinder_fish_user_key_bindings
    end
end

# end

set -U FZF_LEGACY_KEYBINDINGS 0

alias l "ls"
alias o "xdg-open"
alias ghci "stack ghci --"
alias ghc "stack ghc --"
alias runghc "stack runghc --"

set EDITOR micro

alias configfish "$EDITOR $HOME/.config/fish/config.fish"
alias sourcefish "source $HOME/.config/fish/config.fish"
