void main() {
  // no 57
  final profil = Profil(namaBelakang: 'Abidin', namaDepan: 'Zaenal');
  print('Nama lengkap awal: ${profil.namaLengkap}');
  profil.namaDepan = 'Andi';
  print(
    'Nama lengkap setelah diubah: ${profil.namaLengkap}',
  );
}

class Profil {
  String _namaDepan;
  String _namaBelakang;

  Profil({required String namaBelakang, required String namaDepan})
    : _namaBelakang = namaBelakang,
      _namaDepan = namaDepan;


  String get namaLengkap => '$_namaDepan $_namaBelakang';

  set namaDepan(String namaDepanBaru) {
    _namaDepan = namaDepanBaru;
  }

  set namaBelakang(String namaBelakangBaru) {
    _namaBelakang = namaBelakangBaru;
  }
}
