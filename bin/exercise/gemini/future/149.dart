void main() {
  // no 149
  print('Memuat dua data');

  final data1 = unduhProfil();
  final data2 = unduhBeranda();

  data2.then((kalimat) {
    print(kalimat);
  }); // ingin melihat kalau ditaruh duluan apakah ini akan selesai duluan
  // ternyata tetep sama saja sesuai lama nunggu

  data1.then((kalimat) {
    print(kalimat);
  });

  data2.then((kalimat) {
    print(kalimat);
  });
}

Future<String> unduhProfil() {
  return Future.delayed(Duration(seconds: 2), () => 'Profil diunduh');
}

Future<String> unduhBeranda() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Beranda diunduh';
  });
}
