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
text1="✨ Welcome to Airdrop Red Left Hand! ✨"
text2="👨‍💻 Join the movement and level up with us on Telegram! 🚀"

# Function to center text
center_text() {
  local text="$1"
  local width=50
  local len=${#text}
  local spaces=$(( (width - len) / 2 ))
  printf '%*s' "$spaces" ""
  echo -e "$text"
}

# Pusatkan dan tampilkan teks ajakan
center_text "$text1"
center_text "$text2"

echo -e "\n"  # Add space after the call-to-action text

# Tautan Telegram Channel dan Group dengan warna cyan
echo -e "\e[1;36m🌍 Channel Telegram: https://t.me/airdropredlefthand"
echo -e "\e[1;36m💬 Grup Telegram: https://t.me/airdropredlefthanddisscusion"

# Mengembalikan warna font ke normal
echo -e "\e[0m"

# Garis kosong agar lebih rapi
echo -e "\n"
