void main() {
  // no 111
  Programmer programmer = Programmer(
    bahasaPemrograman: ['Dart', 'Python', 'JavaScript'],
    id: 001,
    nama: 'Andi',
  );

  print('Info Programmer');
  print('ID: ${programmer.id}');
  print('Nama: ${programmer.nama}');
  print('Bahasa yang dikuasai: ${programmer.bahasaPemrograman}');
}

class Pegawai {
  String nama;
  int
  id; // soal aneh disitu tertulis P001, tapi minta tipe data int, maanya itu tulis saja 001

  Pegawai({required this.id, required this.nama});
}

class Programmer extends Pegawai {
  List<String> bahasaPemrograman;
  Programmer({
    required this.bahasaPemrograman,
    required super.id,
    required super.nama,
  });
}
