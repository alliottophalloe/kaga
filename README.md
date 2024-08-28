# Kaga - Reverse IP Lookup Tool
Kaga adalah alat untuk melakukan Reverse IP Lookup yang ditulis dalam PowerShell dan BourneShell untuk memudahkan penggunaannya di berbagai lingkungan.

## Fitur
- **Multi-Platform**: Dapat dijalankan di Windows (PowerShell) dan Unix-like systems (BourneShell).
- **Logging**: Mencatat semua aktivitas dan hasil lookup.
- **Hasil Tersimpan**: Hasil Reverse IP Lookup disimpan dalam file terpisah berdasarkan platform.

## Instalasi
1. Clone repository ini ke sistem Anda.
2. Sesuaikan konfigurasi di `config.ps1` atau `config.sh`.
3. Jalankan `kaga.ps1` untuk Windows atau `kaga.sh` untuk Unix-like systems.

## Penggunaan
Contoh menjalankan reverse IP lookup:
```powershell
# Untuk Windows
powershell ./powershell/kaga.ps1

# Untuk Unix-like systems
bash ./bourneshell/kaga.sh
```