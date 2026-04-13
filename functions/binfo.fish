# Binfo - System Information Function for BerkeOS Fish Shell

function binfo - description "Display system information"
    # OS Info
    echo "=== System Information ==="
    if test -f /etc/os-release
        source /etc/os-release
        echo "OS: $PRETTY_NAME"
    end
    echo "Kernel: "(uname -r)
    echo "Host: "(uname -m)

    # Shell Info
    echo ""
    echo "=== Shell Information ==="
    echo "Shell: Fish "(fish --version | string split ' ')[3]

    # Package Count
    echo ""
    echo "=== Packages ==="
    if type -q pacman
        echo "Pacman: "(pacman -Qq | wc -l)" packages"
    end
    if type -q yay
        echo "AUR (yay): "(yay -Qq | wc -l)" packages"
    else if type -q paru
        echo "AUR (paru): "(paru -Qq | wc -l)" packages"
    end

    # Disk Usage
    echo ""
    echo "=== Disk Usage ==="
    df -h / | tail -1 | awk '{print "Root: " $3 " / " $2 " (" $5 ")"}'

    # Memory
    echo ""
    echo "=== Memory ==="
    free -h | grep Mem | awk '{print $3 " / " $2}'

    # Uptime
    echo ""
    echo "=== Uptime ==="
    uptime -p

    # Current user
    echo ""
    echo "=== User ==="
    echo "User: "(whoami)"@"$(hostname)
end
