#!/bin/bash

# Menampilkan ASCII art dengan warna merah
echo -e "\e[1;31m

 █████╗ ██╗██████╗ ██████╗ ██████╗  ██████╗ ██████╗     ██████╗ ███████╗██████╗ ██╗  ██╗ █████╗ ███╗   ██╗██████╗ 
██╔══██╗██║██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██╔══██╗    ██╔══██╗██╔════╝██╔══██╗██║  ██║██╔══██╗████╗  ██║██╔══██╗
███████║██║██████╔╝██║  ██║██████╔╝██║   ██║██████╔╝    ██████╔╝█████╗  ██║  ██║███████║███████║██╔██╗ ██║██║  ██║
██╔══██║██║██╔══██╗██║  ██║██╔══██╗██║   ██║██╔═══╝     ██╔══██╗██╔══╝  ██║  ██║██╔══██║██╔══██║██║╚██╗██║██║  ██║
██║  ██║██║██║  ██║██████╔╝██║  ██║╚██████╔╝██║         ██║  ██║███████╗██████╔╝██║  ██║██║  ██║██║ ╚████║██████╔╝
╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝         ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ 
                                                                                                                  

"

# Menambahkan teks ajakan di tengah logo dengan penyesuaian warna
echo -e "\n"
# Calculate spaces to center the text (50 is roughly half of the longest line in the logo)
spaces=$(printf '%*s' $(( (50 - ${#line}) / 2 )))
echo -e "\e[1;37m$spaces✨ Welcome to Airdrop Red Left Hand! ✨$spaces"
spaces=$(printf '%*s' $(( (50 - ${#line}) / 2 )))
echo -e "\e[1;32m$spaces👨‍💻 Join the movement and level up with us on Telegram! 🚀$spaces"

# Tautan Telegram Channel dan Group dengan warna cyan
echo -e "\e[1;36m🌍 Channel Telegram: https://t.me/airdropredhand"
echo -e "\e[1;36m💬 Grup Telegram: https://t.me/airdropredhanddiscussion"

# Garis kosong agar lebih rapi
echo -e "\n\n"
