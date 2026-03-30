#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Harsh Panchal

# Alias concept demonstrated:
# To run this easily, I added this to my ~/.bashrc:
# alias manifesto='~/scripts/manifesto.sh'

echo "=========================================="
echo "   Open Source Manifesto Generator"
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo

# Using read -p to ask me questions interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
# Name the file dynamically based on my username
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating manifesto..."

# Writing my answers into a paragraph and saving it to the file
echo "==========================================" > "$OUTPUT"
echo "        MY OPEN SOURCE MANIFESTO          " >> "$OUTPUT"
echo "        Date: $DATE                       " >> "$OUTPUT"
echo "==========================================" >> "$OUTPUT"
echo "Every day, I rely on $TOOL to build and learn in my classes." >> "$OUTPUT"
echo "This tool exists because developers chose collaboration" >> "$OUTPUT"
echo "over proprietary restriction." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "To me, 'freedom' in software means $FREEDOM." >> "$OUTPUT"
echo "It means the right to look under the hood, learn, and share." >> "$OUTPUT"
echo "Inspired by this ecosystem, I pledge to one day build a" >> "$OUTPUT"
echo "$BUILD and share its source code freely under the GPL," >> "$OUTPUT"
echo "so that other students can stand on my shoulders just as I have" >> "$OUTPUT"
echo "stood on the shoulders of giants." >> "$OUTPUT"

echo "Manifesto saved to $OUTPUT!"
echo "------------------------------------------"
# Let's see what it wrote!
cat "$OUTPUT"