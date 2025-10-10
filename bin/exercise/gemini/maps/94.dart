void main() {
  // no 94
  final daftarKontak = {
    'Andi': '0812345',
    'Budi': '0823456',
    'Siti': '0834567',
  };

  for (var i = 0; i < daftarKontak.length; i++) {
    print(daftarKontak.entries); // coba coba sajaaa
  }

  print('\nDaftar Kontak');
  for (var element in daftarKontak.entries) {
    print(' - Nama : ${element.key}, Telp: ${element.value}');
  }
}
