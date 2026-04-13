# Brefresh - Refresh Environment Function for BerkeOS Fish Shell

function brefresh - description "Refresh shell environment and configs"
    # Reload fish config
    if type -q fish
        source $HOME/.config/fish/config.fish
    end

    # Reload environment variables
    if test -f $HOME/.profile
        source $HOME/.profile
    end

    # Reload XDG environment
    set -gx XDG_CONFIG_HOME $HOME/.config
    set -gx XDG_DATA_HOME $HOME/.local/share
    set -gx XDG_CACHE_HOME $HOME/.cache

    # Refresh terminal title
    echo -ne "\033]0;"(prompt_pwd)" - Fish\007"

    echo "Shell environment refreshed!"
end
