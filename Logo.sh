#!/bin/bash

# Fungsi untuk mendapatkan lebar terminal
get_terminal_width() {
  # Mendapatkan lebar terminal
  terminal_width=$(tput cols)
}

# Fungsi untuk memusatkan teks
center_text() {
  local text="$1"
  local len=${#text}
  local spaces=$(( (terminal_width - len) / 2 ))  # Menghitung spasi untuk memusatkan teks
  printf '%*s' "$spaces" ""  # Menambahkan spasi untuk memusatkan teks
  echo -e "$text"
}

# Fungsi untuk animasi loader jam
function loading() {
  local spin=('🕛' '🕜' '🕝' '🕞' '🕝' '🕜')  # Representasi jam yang berputar
  local i=0
  while true
  do
    # Menampilkan animasi jam
    printf "\rLoading... ${spin[$i]}"
    ((i=(i+1)%6))  # Mengubah posisi jam
    sleep 0.5  # Kecepatan animasi
  done
}

# Memperoleh lebar terminal sebelum menampilkan apa pun
get_terminal_width

# Jalankan loader di background
loading &
loader_pid=$!  # Ambil PID dari proses loader

# Simulasi tugas lain (misalnya, pemrosesan atau menunggu beberapa detik)
sleep 4  # Simulasi pemrosesan selama 4 detik 

# Hentikan proses loader setelah tugas selesai
kill $loader_pid

# Membersihkan layar untuk logo dan teks ajakan
clear

# Menampilkan ASCII art dengan warna merah
echo -e "\e[1;31m"  # Mengatur warna merah untuk ASCII art
ASCII_ART=$(cat << "EOF"
        /$$$$$$  /$$$$$$ /$$$$$$$  /$$$$$$$  /$$$$$$$   /$$$$$$  /$$$$$$$   
       /$$__  $$|_  $$_/| $$__  $$| $$__  $$| $$__  $$ /$$__  $$| $$__  $$  
      | $$  \ $$  | $$  | $$  \ $$| $$  \ $$| $$  \ $$| $$  \ $$| $$  \ $$  
      | $$$$$$$$  | $$  | $$$$$$$/| $$  | $$| $$$$$$$/| $$  | $$| $$$$$$$/  
      | $$__  $$  | $$  | $$__  $$| $$  | $$| $$__  $$| $$  | $$| $$____/   
      | $$  | $$  | $$  | $$  \ $$| $$  | $$| $$  \ $$| $$  | $$| $$        
      | $$  | $$ /$$$$$$| $$  | $$| $$$$$$$/| $$  | $$|  $$$$$$/| $$        
      |__/  |__/|______/|__/  |__/|_______/ |__/  |__/ \______/ |__/        
                                                                             

 /$$$$$$$  /$$$$$$$$ /$$$$$$$        /$$   /$$  /$$$$$$  /$$   /$$ /$$$$$$$ 
| $$__  $$| $$_____/| $$__  $$      | $$  | $$ /$$__  $$| $$$ | $$| $$__  $$
| $$  \ $$| $$      | $$  \ $$      | $$  | $$| $$  \ $$| $$$$| $$| $$  \ $$
| $$$$$$$/| $$$$$   | $$  | $$      | $$$$$$$$| $$$$$$$$| $$ $$ $$| $$  | $$
| $$__  $$| $$__/   | $$  | $$      | $$__  $$| $$__  $$| $$  $$$$| $$  | $$ 
| $$  \ $$| $$      | $$  | $$      | $$  | $$| $$  | $$| $$\  $$$| $$  | $$ 
| $$  | $$| $$$$$$$$| $$$$$$$/      | $$  | $$| $$  | $$| $$ \  $$| $$$$$$$/ 
|__/  |__/|________/|_______/       |__/  |__/|__/  |__/|__/  \__/|_______/ 
EOF
)

echo -e "$ASCII_ART"

# Menghitung jumlah baris dari ASCII art
ascii_art_lines=$(echo -e "$ASCII_ART" | wc -l)

# Menghitung setengah tinggi ASCII art
half_ascii_art_height=$((ascii_art_lines / 2))

# Menghitung posisi tengah untuk teks ajakan dalam ASCII art
# Teks ajakan akan ditampilkan setelah bagian tengah ASCII art
text1="✨ Welcome to Airdrop Red Hand! ✨"
text2="👨‍💻 Join the movement and level up with us on Telegram! 🚀"

# Menghitung posisi untuk memusatkan teks ajakan di tengah ASCII art
center_offset=$((half_ascii_art_height - 1))  # Sesuaikan offset sesuai keinginan

# Menambahkan baris kosong hingga mencapai posisi tengah ASCII art
for ((i = 0; i < center_offset; i++)); do
  echo -e ""
done

# Menampilkan teks ajakan di tengah-tengah ASCII art
echo -e "\e[1;37m"  # Mengatur warna teks menjadi putih
center_text "$text1"
center_text "$text2"

# Mengembalikan warna font ke normal
echo -e "\e[0m"

# Garis kosong agar lebih rapi
echo -e "\n"

# Menambahkan tautan Telegram Channel dan Group dengan warna cyan
echo -e "\e[1;36m🌍 Channel Telegram: https://t.me/airdropredlefthand"
echo -e "\e[1;36m💬 Grup Telegram: https://t.me/airdropredlefthanddisscusion"

# Mengembalikan warna font ke normal
echo -e "\e[0m"

# Menambahkan kata-kata keren setelah menampilkan link Telegram
echo -e "\e[1;32m💪 You've been waiting, now the adventure begins! 🚀"
echo -e "\e[1;33m🔥 Let's make things happen, together! 🌟"

# Mengembalikan warna font ke normal
echo -e "\e[0m"

# Garis kosong agar lebih rapi
echo -e "\n"

# Menambahkan delay 2 detik sebelum melanjutkan proses selanjutnya 
sleep 2  # Tunggu selama 2 detik
