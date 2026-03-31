#!/bin/bash
# Script 2 : FOSS Package Inspector


PACKAGE="libreoffice"

echo "=========================================="
echo "     FOSS PACKAGE INSPECTOR"
echo "     Target: $PACKAGE"
echo "=========================================="
echo ""

# Check if package is installed using pacman
if pacman -Qi "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is INSTALLED on this system"
    echo ""
    echo "Package Details:"
    echo "----------------"
    pacman -Qi "$PACKAGE" | grep -E 'Version|Licenses|Architecture|Build Date|Packager'

    # Extract version
    VERSION=$(pacman -Qi "$PACKAGE" | grep Version | awk '{print $3}')
    echo ""
    echo "Full Version      : $VERSION"

    # Running version
    if command -v libreoffice &>/dev/null; then
        RUNNING_VER=$(libreoffice --version | head -1)
        echo "Running Version   : $RUNNING_VER"
    fi
else
    echo "❌ $PACKAGE is NOT installed on this system"
    echo ""
    echo "To install on Arch Linux, run:"
    echo "  sudo pacman -S libreoffice-fresh"
fi

echo ""
echo "=========================================="
echo "     PHILOSOPHY NOTES (by package)"
echo "=========================================="

case "$PACKAGE" in
    libreoffice)
        echo ""
        echo "LIBREOFFICE PHILOSOPHY"
        echo "------------------------"
        echo "Born from a community fork in 2010 when Oracle threatened"
        echo "to control OpenOffice.org. The Document Foundation was"
        echo "established to ensure this software remains free forever."
        echo ""
        echo "License: MPL 2.0 (Mozilla Public License)"
        echo "   - File-based copyleft"
        echo "   - Allows commercial partnerships (Collabora, CIB)"
        echo "   - Ensures core improvements remain open"
        echo ""
        echo "Mission: Digital Sovereignty"
        echo "   - Your documents stay yours"
        echo "   - No vendor lock-in"
        echo "   - OpenDocument Format (ODF) is ISO standard"
        echo "   - No telemetry, runs locally by default"
        ;;
    httpd)
        echo "APACHE HTTP SERVER"
        echo "The web server that built the open internet."
        ;;
    mysql)
        echo "MYSQL"
        echo "Open source database used worldwide."
        ;;
    vlc)
        echo "VLC MEDIA PLAYER"
        echo "\"Plays anything\" — supports almost every format."
        ;;
    firefox)
        echo "FIREFOX"
        echo "A non-profit browser focused on privacy and openness."
        ;;
    *)
        echo "Package: $PACKAGE"
        echo "No specific philosophy note configured."
        ;;
esac

echo ""
echo "=========================================="
echo "     OPEN SOURCE PRINCIPLES IN ACTION"
echo "=========================================="
echo "The existence of this package on Arch Linux"
echo "demonstrates that software can be:"
echo "  • Developed by open communities"
echo "  • Distributed freely"
echo "  • Used without subscription fees"
echo "  • Modified as needed"
echo ""
