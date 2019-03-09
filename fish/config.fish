
set fish_greeting ""

set -x TERM xterm-256color

set -x HISTFILESIZE
set -x HISTSIZE

# try to fix all the fucked up ssh stuff
#set -x SSH_AUTH_SOCK /run/user/1001/keyring/ssh

#set -x DISPLAY ":0"

. /usr/share/powerline/bindings/fish/powerline-setup.fish

powerline-setup

alias vim nvim
