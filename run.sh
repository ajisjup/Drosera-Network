#!/bin/bash

echo "Menyiapkan node Drosera..."

# Install dependensi dasar
apt update && apt install -y curl unzip git build-essential clang pkg-config libssl-dev

# Clone ulang repo utama jika belum ada
if [ ! -d "Drosera-Network" ]; then
  git clone https://github.com/0xmoei/Drosera-Network
fi

cd Drosera-Network

# Jalankan install script (harusnya ada file install.sh di repo)
if [ -f "install.sh" ]; then
  chmod +x install.sh
  ./install.sh
else
  echo "install.sh tidak ditemukan!"
fi
