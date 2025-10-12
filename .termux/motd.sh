#!/data/data/com.termux/files/usr/bin/bash

#list of logos
logos=("locos" "macos" "Minix" "NixOS" "nixos_old" "NetBSD" "NetBSD2" "openbsd" "opensuse" "orchid" "orchid_small" "OSX" "PacBSD" "Parrot" "PikaOS" "PNM Linux" "Puppy" "Radix" "raspbian" "rhel" "Scientific" "Slitaz" "Source Mage" "Sulin" "TempleOS" "Twister" "void" "Windows" "Xenia_old")

#random selector
random_index=$((RANDOM % ${#logos[@]}))

#parse list for logos
selected_logo="${logos[$random_index]}"

#make space above
echo

#command
fastfetch --logo "$selected_logo"

echo
