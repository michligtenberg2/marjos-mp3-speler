#!/bin/bash

echo "📦 Openbox-configuratie wordt geïnstalleerd..."

# Vereiste mappen aanmaken
mkdir -p ~/.config

# Verplaats config-bestanden
mv .config/openbox ~/.config/
mv .config/rofi ~/.config/
mv .config/tint2 ~/.config/
mv .config/picom.conf ~/.config/

# Verplaats root-bestanden
mv .xinitrc ~/
mv .bash_profile ~/

# Zorg dat autostart en xinitrc uitvoerbaar zijn
chmod +x ~/.config/openbox/autostart.sh
chmod +x ~/.xinitrc

# Installeer vereiste pakketten
echo "📦 Installatie van benodigde pakketten..."
sudo apt update
sudo apt install -y openbox tint2 picom rofi feh thunar lxappearance alacritty volumeicon-alsa network-manager-gnome xinit

echo "✅ Configuratie voltooid!"
echo "🖼 Zorg dat je een wallpaper plaatst in ~/Pictures/wallpaper.jpg"
echo "🔁 Start je systeem opnieuw op om Openbox automatisch te starten."
