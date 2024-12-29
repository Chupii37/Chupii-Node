#!/bin/bash

# Mendapatkan lebar terminal dengan tput dan penanganan error
terminal_width=$(tput cols 2>/dev/null || echo 80)

# Fungsi untuk memusatkan teks
center_text() {
  local text="$1"
  local len=${#text}
  local spaces=$(( (terminal_width - len) / 2 ))
  printf '%*s' "$spaces" ""  # Menambahkan spasi untuk memusatkan teks
  echo -e "$text"
}

# Fungsi untuk memusatkan ASCII art per baris
center_ascii_art() {
  local art="$1"
  local line
  while IFS= read -r line; do
    # Pusatkan setiap baris dari ASCII art
    center_text "$line"
  done <<< "$art"
}

# ASCII art baru yang Anda berikan
ascii_art="
╔══╦╗──╔╗────╔═╗──╔╗
║╔╗╠╬╦╦╝╠═╦═╗║╬╠═╦╝║
║╠╣║║╔╣╬║╬║╬║║╗╣╩╣╬║
╚╝╚╩╩╝╚═╩═╣╔╝╚╩╩═╩═╝
──────────╚╝
╔╗──╔═╦╗─╔╗╔╗──────╔╗
║║╔═╣═╣╚╗║╚╝╠═╗╔═╦╦╝║
║╚╣╩╣╔╣╔╣║╔╗║╬╚╣║║║╬║
╚═╩═╩╝╚═╝╚╝╚╩══╩╩═╩═╝
"

# Menampilkan ASCII art yang dipusatkan
echo -e "\e[1;31m"  # Mengatur warna merah untuk ASCII art
center_ascii_art "$ascii_art"

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
