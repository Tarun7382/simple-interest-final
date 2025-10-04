#!/usr/bin/env bash
set -euo pipefail

read -p "Enter Principal: " p
read -p "Enter Rate of Interest (percent per year): " r
read -p "Enter Time (years): " t

# Use bc for decimal calculation; show 2 decimal places
si=$(echo "scale=4; ($p * $r * $t) / 100" | bc -l)
printf "Simple Interest = %s\n" "$(printf "%.2f" "$si")"
