set -gx TERM xterm-256color
set -gx EDITOR nvim
set -gx PAGER less

#----------------------------------
# Theme
#----------------------------------

# Catppuccin Theme
#fish_config theme save "Catppuccin Frappe"

#set -g async_prompt_functions _pure_prompt_git
#set -g pure_color_git_dirty pure_color_danger

# Rose Pine
#fish_config theme save "Rosé Pine"

#----------------------------------
# Aliases
#----------------------------------

alias ls "eza --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"
alias l "eza --git-ignore --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"
alias ll "eza --all --header --long --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"
alias llm "eza --all --header --long --sort=modified --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"
alias la "eza -lbhHigUmuSa"
alias lx "eza -lbhHigUmuSa@"
alias lt "eza --tree --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"
alias tree "eza --tree --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"

alias g git
alias lg lazygit
alias k kubectl
command -qv nvim && alias vim nvim
command -qv terraform && alias tf terraform

alias cat bat
alias cl clear

alias wallpaper "sh ~/.config/hypr/scripts/swww_init_according_to_time_of_day.sh"


set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"

#----------------------------------
# PATHS
#----------------------------------

fish_add_path bin
fish_add_path ~/bin
fish_add_path ~/.local/bin
fish_add_path /home/jan/.local/bin

# NodeJS
fish_add_path node_modules/.bin

# Go
set -g GOPATH $HOME/Projects/go
fish_add_path $GOPATH/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

#----------------------------------
# NodeJS
#----------------------------------

set -gx nvm_default_version latest

#----------------------------------
# Starship
#----------------------------------

starship init fish | source
