# BerkeOS Shell Configuration for Fish

# Set default editor
set -gx EDITOR nvim
set -gx VISUAL nvim

# XDG directories
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CACHE_HOME $HOME/.cache

# Development paths
set -gx CARGO_HOME $HOME/.cargo/bin
set -gx RUSTUP_HOME $HOME/.rustup

# Go paths
set -gx GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# Node paths
set -gx NODE_PATH $HOME/.npm-global/lib/node_modules

# History settings
set -gx fish_history universal

# Abbreviations for common commands
abbr -a g git
abbr -a gs git status
abbr -a ga git add
abbr -a gc git commit
abbr -a gp git push
abbr -a gl git log
abbr -a gd git diff
abbr -a gco git checkout
abbr -a gb git branch

abbr -a ll ls -la
abbr -a la ls -a
abbr -a lt ls --tree

abbr -a .. cd ..
abbr -a ... cd ../..
abbr -a .... cd ../../..

abbr -a q exit

# Enable vi mode
fish_vi_key_bindings

# Enable autosuggestion
fish_default_key_bindings

# Load starship prompt
starship init fish | source

# Color configuration
set -g fish_color_command blue
set -g fish_color_param cyan
set -g fish_color_error red
set -g fish_color_selection --background=brblack
set -g fish_color_search_match brcyan
set -g fish_color_operator brcyn
set -g fish_color_escape brcyn
set -g fish_color_cwd green
set -g fish_color_autosuggestion brblack
set -g fish_color_user brgreen
set -g fish_color_host remote
set -g fish_color_cancel -r

# Aliases
alias cat 'bat'
alias find 'fd'
alias grep 'rg'
alias history 'history | bat'
alias tmux 'tmux -u'
alias vi nvim
alias vim nvim
alias watch 'watchexec'

# BerkeOS custom aliases
alias update 'bupdate'
alias refresh 'brefresh'
alias info 'binfo'
alias clean 'bclean'
