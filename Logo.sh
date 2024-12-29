#!/bin/bash

# Menampilkan ASCII art dengan warna merah
echo -e "\e[1;31m


▄▀█ █ █▀█ █▀▄ █▀█ █▀█ █▀█   █▀█ █▀▀ █▀▄
█▀█ █ █▀▄ █▄▀ █▀▄ █▄█ █▀▀   █▀▄ ██▄ █▄▀

█░░ █▀▀ █▀▀ ▀█▀   █░█ ▄▀█ █▄░█ █▀▄
█▄▄ ██▄ █▀░ ░█░   █▀█ █▀█ █░▀█ █▄▀

"

# Menambahkan teks ajakan di tengah logo dengan penyesuaian warna
# Menghitung ruang untuk memusatkan teks (50 kira-kira setengah dari panjang baris logo yang terpanjang)
spaces=$(printf '%*s' $(( (50 - ${#line}) / 2 )))
echo -e "\e[1;37m$spaces✨ Welcome to Airdrop Red Left Hand! ✨$spaces"
spaces=$(printf '%*s' $(( (50 - ${#line}) / 2 )))
echo -e "\e[1;32m$spaces👨‍💻 Join the movement and level up with us on Telegram! 🚀$spaces"

echo -e "\n"  # Add space after the call-to-action text

# Tautan Telegram Channel dan Group dengan warna cyan
echo -e "\e[1;36m🌍 Channel Telegram: https://t.me/airdropredlefthand"
echo -e "\e[1;36m💬 Grup Telegram: https://t.me/airdropredlefthanddisscusion"

# Mengembalikan warna font ke normal
echo -e "\e[0m"

# Garis kosong agar lebih rapi
echo -e "\n"
