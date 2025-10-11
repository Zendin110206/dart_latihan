void main() {
  // no 30
  var skorSiswa = {"Andi": 88, "Budi": 95, "Siti": 76, "Dewi": 98, "Eka": 85};
  // 1. Ambil nama dan skor dari siswa pertama sebagai nilai awal.
  String namaTertinggi = skorSiswa.keys.first;
  int nilaiTertinggi = skorSiswa.values.first;

  // 2. Lakukan perulangan untuk membandingkan.
  for (var entri in skorSiswa.entries) {
    if (entri.value > nilaiTertinggi) {
      nilaiTertinggi = entri.value;
      namaTertinggi = entri.key;
    }
  }

  print(
    "Siswa dengan skor tertinggi adalah $namaTertinggi dengan skor $nilaiTertinggi.",
  );
}
