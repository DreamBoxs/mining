#!/bin/bash

# Mengunduh SRBMiner-Multi
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.4.7/SRBMiner-Multi-2-4-7-Linux.tar.xz

# Mengekstrak file yang diunduh
tar -xf SRBMiner-Multi-2-4-7-Linux.tar.xz

# Masuk ke direktori SRBMiner-Multi-2-4-7 atau keluar jika gagal
cd SRBMiner-Multi-2-4-7 || exit

# Menjalankan SRBMiner-Multi untuk 4 instance
# for ((i = 1; i <= 4; i++)); do
#     screen -dmS SRBMiner$i ./SRBMiner-MULTI --algorithm randomx --pool stratum+ssl://rx.unmineable.com:443 --wallet XRP:rPmk8dPsixqvfP8mUy2iiGCy2zs76hr8ng.rig-$i
#     echo "Berhasil menjalankan SRBMiner ke-$i"
# done

# Menampilkan daftar layar
# screen -ls

# Menjalankan SRBMiner-MULTI untuk instance ke-5
./SRBMiner-MULTI --algorithm randomx --pool stratum+ssl://rx.unmineable.com:443 --wallet XRP:rPmk8dPsixqvfP8mUy2iiGCy2zs76hr8ng.rig-5
