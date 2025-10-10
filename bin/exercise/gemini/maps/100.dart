void main() {
  // no 100
  var skorSiswa = {'Andi': 80, 'Budi': 65, 'Siti': 95, 'Eka': 50};

  // 1. Siapkan Map kosong untuk hasil akhir.
  Map<String, String> statusKelulusan = {};

  // 2. Gunakan for-in untuk mengiterasi setiap 'entri' di dalam skorSiswa.entries.
  for (var entri in skorSiswa.entries) {
    // 3. Cek nilai (skor) dari setiap entri.
    if (entri.value >= 70) {
      // Jika lulus, gunakan kunci (nama) dari entri untuk membuat data baru.
      statusKelulusan[entri.key] = 'Lulus';
    } else {
      // Jika gagal, lakukan hal yang sama dengan status "Gagal".
      statusKelulusan[entri.key] = 'Gagal';
    }
  }

  // 4. Cetak hasilnya.
  print('Status kelulusan: $statusKelulusan');
}
