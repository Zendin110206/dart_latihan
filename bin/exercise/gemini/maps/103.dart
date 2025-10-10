class Siswa {
  // no 103
  String nama;
  String jurusan;
  Siswa(this.nama, this.jurusan);
}

void main() {
  var daftarSiswa = [
    Siswa("Andi", "Informatika"),
    Siswa("Budi", "Sistem Informasi"),
    Siswa("Siti", "Informatika"),
    Siswa("Eka", "DKV"),
    Siswa("Dewi", "Sistem Informasi"),
  ];

  // Map untuk menampung hasil pengelompokan.
  Map<String, List<String>> siswaPerJurusan = {};

  for (var siswa in daftarSiswa) {
    // Jika kunci 'jurusan' belum ada, buat list kosong.
    // Kemudian, tambahkan nama siswa ke list yang sesuai dengan jurusannya.
    siswaPerJurusan.putIfAbsent(siswa.jurusan, () => []).add(siswa.nama);
    print(siswaPerJurusan); // melihat progress
  }

  print(siswaPerJurusan);
}
