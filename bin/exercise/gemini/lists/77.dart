void main() {
  // no 77
  List<Siswa> daftarSiswa = [
    Siswa(nama: 'Budi', nilai: 100),
    Siswa(nama: 'Dewi', nilai: 76),
    Siswa(nama: 'Anggun', nilai: 50),
    Siswa(nama: 'Eva', nilai: 20),
  ];

  print("Total siswa: ${Siswa.banyakSiswa}");
  for (var siswa in daftarSiswa) {
    print(
      '${siswa.nama} - Nilai: ${siswa.nilai}',
    ); // memastikan terlebih dahulu
  }

  // filter siswa yang nilainya > 75
  List<Siswa> lulusSiswa = daftarSiswa.where((s) => s.nilai > 75).toList();
  // kalau dilihat lihat ini tuh hampir sama dengan si for in kalau ngelihat dari syntax s.nilai

  List<String> namaSaja = lulusSiswa.map((s) => s.nama).toList();
  print("Siswa yang lulus: $namaSaja");
}

class Siswa {
  static int banyakSiswa = 0;

  String nama;
  int nilai;
  Siswa({required this.nama, required this.nilai}) {
    banyakSiswa++;
  }
}
