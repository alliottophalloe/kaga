. ./config.ps1
. ./utils.ps1

function ReverseIPLookup {
    param (
        [string]$ip
    )
    
    $domains = (Invoke-WebRequest -Uri "https://api.hackertarget.com/reverseiplookup/?q=$ip").Content
    if ($domains) {
        Add-Content -Path $result_file -Value $domains
        Log-Activity "Reverse IP lookup berhasil untuk $ip"
    } else {
        Log-Activity "Gagal melakukan Reverse IP lookup untuk $ip"
    }
}

# Contoh penggunaan
$target_ip = "8.8.8.8"
ReverseIPLookup -ip $target_ip
