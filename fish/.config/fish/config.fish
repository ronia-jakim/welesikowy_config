set -gx EDITOR nvim

set -gx PATH /home/maruda/go/bin $PATH

alias nix-shell "nix-shell --run fish"

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end
