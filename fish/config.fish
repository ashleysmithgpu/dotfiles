
set fish_greeting ""

set -x TERM xterm-256color

set -x HISTFILESIZE
set -x HISTSIZE

if test -d "$HOME/.local/bin"
    set -x PATH "$HOME/.local/bin" $PATH
end

. $HOME/.local/lib/python2.7/site-packages/powerline/bindings/fish/powerline-setup.fish

powerline-setup

