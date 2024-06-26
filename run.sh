#!/bin/bash

/etc/init.d/nginx start
/etc/init.d/php7.4-fpm start

echo "Memulai Proses..."
bash one.sh
echo "Membuat Container2"
bash two.sh
echo "Mengkonfigurasi Load Balance"
bash three.sh
echo "Proses Selesai ^_^"

read -p "Apakah Anda Ingin Membuat Script Mikrotik? (y/n): " change

if [ "$change" == 'y' ]; then
    bash mikrotik.sh
elif [ "$change" == 'n' ]; then
    echo "Jalankan 'bash mikrotik.sh' untuk membuat script mikrotik."
else
    echo "Pilihan tidak valid."
fi

read -p "Apakah Anda Ingin mengecek semua services? (y/n): " koneksi

if [ "$koneksi" == 'y' ]; then
    bash koneksi.sh
elif [ "$koneksi" == 'n' ]; then
    echo "Jalankan 'bash koneksi.sh' untuk melihat semua services."
else
    echo "Pilihan tidak valid."
fi
