# CUBE 2×2 SOLVER

## Fitur

- Input warna manual untuk 6 sisi. Orientasi fisik bebas; skema warna dideteksi dari 24 sticker.
- Preview 3D langsung setelah sticker diisi. Kubus bisa ditarik atau diputar dengan tombol panah; tombol Reset mengembalikan sudut pandang.
- Tombol ⟳ pada tiap kartu memutar urutan baca 90°.
- Validasi input: jumlah warna, sudut warna ganda, dan konsistensi 8 sudut.
- Pesan kesalahan menjelaskan kenapa susunan tidak konsisten.
- Panduan solusi berupa kubus 3D beranimasi per gerakan.
- Hint kecil menjelaskan tujuan setiap putaran.

## Menjalankan lokal (Windows)

1. Install Node.js versi LTS.
2. Ekstrak folder project.
3. Buka Terminal / PowerShell di folder ini.
4. Jalankan:

```bash
npm install
npm run dev
```

5. Buka alamat localhost yang ditampilkan Vite (biasanya http://localhost:5173).

## Menjalankan tanpa PowerShell (Windows)

1. Pastikan Node.js LTS sudah terpasang.
2. Double-click `start-app.bat` di folder project.
3. Browser terbuka otomatis.
4. Tutup jendela CMD atau tekan `Ctrl+C` untuk menghentikan server.

File `start-app.bat` menjalankan `npm run dev -- --open`. Tidak perlu mengetik perintah di PowerShell.

## Build (belum untuk solver produksi)

```bash
npm run build
```

`npm run build` selesai dan menghasilkan `dist`, tetapi solver worker cubing.js belum berjalan di build statis. Jangan deploy `dist` untuk solver sampai worker entry diperbaiki. Untuk pemakaian lokal, gunakan `npm run dev` atau `start-app.bat`.

## Catatan

Import cubing.js memakai dependency npm agar dev server memproses worker. Build statis masih memiliki batasan worker. Jalankan uji solve pada beberapa scramble legal sebelum memakai solver di lingkungan lain.
