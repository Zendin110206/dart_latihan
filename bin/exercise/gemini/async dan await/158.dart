Future<String> ambilProfil() {
  return Future.delayed(Duration(seconds: 2), () => "Profil Budi");
}

Future<List<String>> ambilDaftarTeman() {
  return Future.delayed(Duration(seconds: 3), () => ["Siti", "Eka", "Andi"]);
}

void main() async {
  // no 158
  print('Memuat data...');

  final data = Future.wait([ambilProfil(), ambilDaftarTeman()]);
  final hasil = await data;
  print('(setelah ~3 detik)');
  print('Data berhasil dimuat!');

  print(hasil); // hasil nya dapat dilihat berupa list
  print('Profil: ${hasil[0]}');
  print('Teman: ${hasil.last}');
}
