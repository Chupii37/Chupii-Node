#!/bin/bash

# Menentukan lebar terminal secara manual atau otomatis
terminal_width=$(stty size | cut -d' ' -f2)

# Fungsi untuk memusatkan teks
center_text() {
  local text="$1"
  local len=${#text}
  local spaces=$(( (terminal_width - len) / 2 ))
  printf '%*s' "$spaces" ""  # Menambahkan spasi untuk memusatkan teks
  echo -e "$text"
}

# Menampilkan ASCII art dengan warna merah
echo -e "\e[1;31m

▄▀█ █ █▀█ █▀▄ █▀█ █▀█ █▀█   █▀█ █▀▀ █▀▄
█▀█ █ █▀▄ █▄▀ █▀▄ █▄█ █▀▀   █▀▄ ██▄ █▄▀

█░░ █▀▀ █▀▀ ▀█▀   █░█ ▄▀█ █▄░█ █▀▄
█▄▄ ██▄ █▀░ ░█░   █▀█ █▀█ █░▀█ █▄▀
"

# Menambahkan teks ajakan di tengah logo dengan penyesuaian warna
text1="✨ Welcome to Airdrop Red Left Hand! ✨"
text2="👨‍💻 Join the movement and level up with us on Telegram! 🚀"

# Menampilkan teks ajakan dengan warna putih
echo -e "\e[1;37m"  # Mengatur warna teks menjadi putih

# Pusatkan dan tampilkan teks ajakan
center_text "$text1"
center_text "$text2"

# Mengembalikan warna font ke normal
echo -e "\e[0m"

echo -e "\n"  # Menambah spasi setelah teks ajakan

# Tautan Telegram Channel dan Group dengan warna cyan
echo -e "\e[1;36m🌍 Channel Telegram: https://t.me/airdropredlefthand"
echo -e "\e[1;36m💬 Grup Telegram: https://t.me/airdropredlefthanddisscusion"

# Mengembalikan warna font ke normal
echo -e "\e[0m"

# Garis kosong agar lebih rapi
echo -e "\n"
