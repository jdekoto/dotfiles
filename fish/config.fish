pokemon-colorscripts --no-title -s -r

set fish_greeting ""
set -x EDITOR nvim

# APK/World Commands
alias install 'sudo apk add'
alias update 'sudo apk update'
alias upgrade 'sudo apk upgrade'
alias search 'sudo apk search'
alias remove 'sudo apk del'

# Shorthand
alias cls clear
alias scope 'scope-tui --scatter --no-ui --no-reference audio'

fish_add_path /home/dytu/.nimble/bin
fish_add_path /home/linuxbrew/.linuxbrew/bin/
fish_add_path /home/dytu/.local/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end
