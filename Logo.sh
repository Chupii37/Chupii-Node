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

# Memperoleh lebar terminal sebelum menampilkan apa pun
get_terminal_width

# Menampilkan ASCII art dan memusatkan teks di tengahnya
cat << "EOF"
       
   ('-.             _  .-')  _ .-') _  _  .-')                  _ (`-.         
  ( OO ).-.        ( \( -O )( (  OO) )( \( -O )                ( (OO  )        
  / . --. /  ,-.-') ,------. \     .'_ ,------.  .-'),-----.  _.`     \        
  | \-.  \   |  |OO)|   /`. ',`'--..._)|   /`. '( OO'  .-.  '(__...--''        
.-'-'  |  |  |  |  \|  /  | ||  |  \  '|  /  | |/   |  | |  | |  /  | |        
 \| |_.'  |  |  |(_/|  |_.' ||  |   ' ||  |_.' |\_) |  |\|  | |  |_.' |        
  |  .-.  | ,|  |_.'|  .  '.'|  |   / :|  .  '.'  \ |  | |  | |  .___.'        
  |  | |  |(_|  |   |  |\  \ |  '--'  /|  |\  \    `'  '-'  ' |  |             
  `--' `--'  `--'   `--' '--'`-------' `--' '--'     `-----'  `--'             
 _  .-')     ('-.  _ .-') _         ('-. .-.   ('-.         .-') _  _ .-') _   
( \( -O )  _(  OO)( (  OO) )       ( OO )  /  ( OO ).-.    ( OO ) )( (  OO) )  
 ,------. (,------.\     .'_       ,--. ,--.  / . --. /,--./ ,--,'  \     .'_  
 |   /`. ' |  .---',`'--..._)      |  | |  |  | \-.  \ |   \ |  |\  ,`'--..._) 
 |  /  | | |  |    |  |  \  '      |   .|  |.-'-'  |  ||    \|  | ) |  |  \  ' 
 |  |_.' |(|  '--. |  |   ' |      |       | \| |_.'  ||  .     |/  |  |   ' | 
 |  .  '.' |  .--' |  |   / :      |  .-.  |  |  .-.  ||  |\    |   |  |   / : 
 |  |\  \  |  `---.|  '--'  /      |  | |  |  |  | |  ||  | \   |   |  '--'  / 
 `--' '--' `------'`-------'       `--' `--'  `--' `--'`--'  `--'   `-------'  

                                                                          
EOF

# Menambahkan teks ajakan di tengah logo dengan penyesuaian warna
text1="✨ Welcome to Airdrop Red Hand! ✨"
text2="👨‍💻 Join the movement and level up with us on Telegram! 🚀"

# Menampilkan teks ajakan dengan warna putih
echo -e "\e[1;37m"  # Mengatur warna teks menjadi putih

# Pusatkan dan tampilkan teks ajakan
# Hitung jumlah baris pada ASCII art
ascii_art_lines=15  # Jumlah baris ASCII art
half_terminal_height=$(( $(tput lines) / 2 ))  # Menghitung setengah tinggi terminal

# Menampilkan teks di tengah-tengah antara ASCII art
# Menambahkan baris kosong untuk menyesuaikan posisi teks
center_offset=$((half_terminal_height - ascii_art_lines / 2))

# Menambahkan baris kosong hingga mencapai posisi tengah ASCII art
for ((i = 0; i < center_offset; i++)); do
  echo -e ""
done

# Tampilkan teks ajakan dengan pemusatan
center_text "$text1"
center_text "$text2"

# Mengembalikan warna font ke normal
echo -e "\e[0m"

# Tautan Telegram Channel dan Group dengan warna cyan
echo -e "\e[1;36m🌍 Channel Telegram: https://t.me/airdropredlefthand"
echo -e "\e[1;36m💬 Grup Telegram: https://t.me/airdropredlefthanddisscusion"

# Mengembalikan warna font ke normal
echo -e "\e[0m"

# Garis kosong agar lebih rapi
echo -e "\n"
