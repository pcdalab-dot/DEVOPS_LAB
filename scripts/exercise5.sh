#!/bin/bash

colors=("Violet" "Indigo" "Blue" "Green" "Yellow" "Orange" "Red")

echo "Original colors:"
echo ${colors[*]}

# Swap Violet and Red
temp=${colors[0]}
colors[0]=${colors[6]}
colors[6]=$temp

echo "After swapping:"
echo ${colors[*]}

# Remove 3rd color (index 2)
unset colors[2]

echo "After removing 3rd color:"
echo ${colors[*]}

# Add new color
colors+=("Pink")

echo "After adding new color:"
echo ${colors[*]}
