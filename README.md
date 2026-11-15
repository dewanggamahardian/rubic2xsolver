# CUBE 2×2 SOLVER

## Fitur

- Input warna manual untuk 6 sisi. Orientasi fisik bebas; skema warna dideteksi dari 24 sticker.
- Auto-orientasi mencoba semua rotasi urutan 4 sticker per sisi. Tidak memperbaiki warna yang salah atau sisi yang tertukar.
- Preview 3D langsung setelah sticker diisi. Kubus bisa ditarik atau diputar dengan tombol panah; tombol Reset mengembalikan sudut pandang.
- Jika viewer 3D gagal dimuat, muncul pesan error dan tombol Coba lagi.
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

## Build dan deploy statis

```bash
npm run build
```

Folder `dist` siap diunggah ke Cloudflare Pages, Netlify, Vercel, atau GitHub Pages.

Cloudflare Pages:

1. Workers & Pages, lalu **Create**.
2. Pilih **Pages**, bukan Workers.
3. Connect repo GitHub.
4. Framework preset: **Vite**.
5. Build command: `npm run build`.
6. Build output directory: `dist`.
7. Deploy.

Jangan isi deploy command `npx wrangler deploy`. Itu jalur Workers dan memicu error auto-setup Vite. Pages hanya butuh build command dan output directory.

## Catatan

Worker solver sekarang dibundel lewat Vite `?worker` dan diuji di `vite preview`. Build statis bisa menyelesaikan kubus, termasuk skema warna non-standar.
