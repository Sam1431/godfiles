#!/bin/sh
# Dmenu script for launching surfaw, a command line search utility.

cmd="dmenu -i -h 30 -sb "#4d97ff" -nb "#000000" -sb "#4d97ff" -sf "#19262b" -o 0.9 -y 35 -w 900 -x 235 -fn terminus-12 " 

while [ -z "$engine" ]; do
engine=$(sr -elvi | gawk '{if (NR!=1) { print $1 }}' | $cmd -p "Search engine?") || exit
done

while [ -z "$query" ]; do
query=$(echo "" | $cmd -p "Searching $engine") || exit
done

firefox "$engine""$query"
