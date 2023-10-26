if status is-interactive
    # Commands to run in interactive sessions can go here
set fish_greeting
neofetch | lolcat
alias vi="nvim"
alias la="ls -al"
end

starship init fish | source
