# Bupdate - System Update Function for BerkeOS Fish Shell

function bupdate - description "Update system packages and AUR"
    # Check for pacman updates
    echo "Checking for system updates..."
    sudo pacman -Syu

    # Check for AUR updates if yay exists
    if type -q yay
        echo "Checking for AUR updates..."
        yay -Sua
    else if type -q paru
        echo "Checking for AUR updates..."
        paru -Sua
    end

    # Clean up after update
    echo "Cleaning up..."
    sudo pacman -Scc

    echo "Update complete!"
end
