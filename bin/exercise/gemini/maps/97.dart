import 'dart:io';

void main() {
  // no 97
  var siswa1 = Siswa(nama: "Andi", jurusan: "Informatika");
  var siswa2 = Siswa(nama: "Budi", jurusan: "Sistem Informasi");
  var databaseSiswa = {"12345": siswa1, "67890": siswa2};
  stdout.write('Masukkan NIM siswa: ');
  String dicariNIM = stdin.readLineSync()!;

  if (databaseSiswa.containsKey(dicariNIM)) {
    print('Data ditemukan:');
    print(databaseSiswa[dicariNIM]);
  } else {
    print('Data tidak ditemukan');
  }
}

class Siswa {
  String nama;
  String jurusan;
  Siswa({required this.nama, required this.jurusan});
  @override
  String toString() {
    return 'Nama: $nama\nJurusan: $jurusan';
  }
}
