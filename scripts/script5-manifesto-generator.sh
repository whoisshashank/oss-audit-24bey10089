#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Manthan Awgan | Course: Open Source Software

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
NC='\033[0m'

clear

echo -e "${PURPLE}"
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║                                                              ║"
echo "║     OPEN SOURCE MANIFESTO GENERATOR                          ║"
echo "║     Inspired by LibreOffice & The Document Foundation        ║"
echo "║                                                              ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo -e "${NC}"
echo ""
echo -e "${YELLOW}This manifesto generator asks you three questions about"
echo "your relationship with open source software. Your answers"
echo "will be woven into a personal philosophy statement.${NC}"
echo ""
echo "Press Enter to continue..."
read

clear

# Questions
echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}Question 1 of 3${NC}"
echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${YELLOW}Name one open-source tool you use every day:${NC}"
read -p "➜ " TOOL
echo ""

echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}Question 2 of 3${NC}"
echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${YELLOW}In one word, what does 'freedom' mean to you in software?${NC}"
read -p "➜ " FREEDOM
echo ""

echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}Question 3 of 3${NC}"
echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${YELLOW}Name one thing you would build and share freely:${NC}"
read -p "➜ " BUILD
echo ""

# System info
DATE=$(date '+%d %B %Y')
REAL_NAME="Manthan Awgan"
USER_NAME=$(whoami)
HOSTNAME=$(hostname)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d'"' -f2)

OUTPUT="manifesto_${USER_NAME}_$(date +%Y%m%d).txt"

# Generate manifesto
cat > "$OUTPUT" << EOF
╔═══════════════════════════════════════════════════════════════════════════╗
║                         OPEN SOURCE MANIFESTO                             ║
║                         Generated: $DATE                                 ║
║                         By: $REAL_NAME @ $HOSTNAME                       ║
║                         System: $DISTRO                                  ║
╚═══════════════════════════════════════════════════════════════════════════╝

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

MY OPEN SOURCE PHILOSOPHY

Every day, I use $TOOL. This software was not built by a single
company and sold for profit. It was built openly, shared freely, and improved
collectively. This is the essence of open source.

To me, freedom means $FREEDOM. This is not just a technical
preference—it is a belief about how knowledge and tools should be shared in
society. When software is open, I can study it, modify it, and share it
with others. No vendor can lock me in. No corporation can hold my data
hostage.

The software I use today sits on the shoulders of giants. From Richard
Stallman's four freedoms to Linus Torvalds's Linux kernel, from the
developers who forked OpenOffice to create LibreOffice in 2010 to the
thousands who maintain it today—I am part of a tradition that believes
software should serve humanity, not extract from it.

I believe I have a responsibility to contribute. One thing I would build
and share freely is $BUILD. Whether through code,
documentation, testing, donations, or simply sharing my knowledge with
others, I will give back to the community that has given me so much.

As The Document Foundation says: "Your documents stay yours — forever."
More broadly, open source means: your data stays yours. Your tools stay
yours. Your freedom stays yours.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

MY COMMITMENT

I, $REAL_NAME, commit to:
• Using and supporting open source software where possible
• Sharing my knowledge with others learning to code
• Contributing to at least one open source project in the coming year
• Advocating for open standards and digital sovereignty

Signed,
$REAL_NAME
$DATE

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

“Standing on the shoulders of giants, I will help build for those who come
after me.”

EOF

clear
echo -e "${GREEN} Manifesto generated successfully!${NC}"
echo ""
echo -e "${YELLOW}Saved to: $OUTPUT${NC}"
echo ""

cat "$OUTPUT"

echo ""
echo -e "${GREEN}Manifesto saved to $OUTPUT${NC}"
echo ""

echo -e "${YELLOW} TIP: Add this alias:${NC}"
echo "alias manifesto='$PWD/$0'"
echo ""

echo "Press Enter to exit..."
read
