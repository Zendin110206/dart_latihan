void main() {
  // no 150
  print('Memulai memuat data');
  final data1 = ambilNamaDepan();
  Future<String> data2 = ambilNamaBelakang();

  data1.then((nilai) {
    data2.then((value) {
      print('Nama lengkap: $nilai $value');
    });
  });
}

Future<String> ambilNamaDepan() {
  return Future.delayed(Duration(seconds: 1), () => 'Budi');
}

Future<String> ambilNamaBelakang() {
  return Future.delayed(Duration(seconds: 2), () => 'Santoso');
}
