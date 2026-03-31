#!/bin/bash
# Script 3 : DISK AND PERMISSION AUDITOR

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# LibreOffice directories (Arch paths)
LIBREOFFICE_DIRS=(
    "/usr/lib/libreoffice"
    "/usr/share/libreoffice"
    "/etc/libreoffice"
)

echo "=========================================="
echo "     LIBREOFFICE SECURITY AUDIT"
echo "=========================================="
echo ""

WORLD_WRITABLE=0

for DIR in "${LIBREOFFICE_DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OTHER_WRITE=$(stat -c %a "$DIR" | cut -c3)

        if [ "$OTHER_WRITE" -ge 2 ]; then
            echo -e "${RED} WARNING: $DIR is world-writable ($PERMS)${NC}"
            WORLD_WRITABLE=1
        fi
    fi
done

if [ $WORLD_WRITABLE -eq 0 ]; then
    echo -e "${GREEN} No world-writable LibreOffice directories found${NC}"
fi

echo ""
echo "=========================================="
echo "     AUDIT COMPLETE"
echo "=========================================="
