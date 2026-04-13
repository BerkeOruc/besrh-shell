# Bclean - Cleanup Function for BerkeOS Fish Shell

function bclean - description "Clean system cache and temporary files"
    # Clean pacman cache
    echo "Cleaning pacman cache..."
    sudo pacman -Scc

    # Clean yay/paru cache
    if type -q yay
        echo "Cleaning yay cache..."
        yay -Scc
    else if type -q paru
        echo "Cleaning paru cache..."
        paru -Scc
    end

    # Clean cache directories
    echo "Cleaning cache directories..."
    rm -rf $HOME/.cache/*

    # Clean thumbnail cache
    if test -d $HOME/.cache/thumbnails
        rm -rf $HOME/.cache/thumbnails/*
    end

    # Clean trash
    if test -d $HOME/.local/share/Trash
        rm -rf $HOME/.local/share/Trash/*
    end

    # Clean old logs
    if test -d $HOME/.local/share/flatpak
        find $HOME/.local/share/flatpak -name "*.old" -delete 2>/dev/null
    end

    # Clean core dumps
    if test -d /tmp
        find /tmp -name "core.*" -delete 2>/dev/null
    end

    echo "Cleanup complete!"
end
