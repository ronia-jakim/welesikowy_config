set -gx PATH /home/maruda/go/bin $PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end
