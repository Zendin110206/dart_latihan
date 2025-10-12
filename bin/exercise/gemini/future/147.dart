void main() {
  // no 147
  print('mulai memuat data');
  final data = cekKoneksiInternet();

  data.then((nilai) {
    if (nilai == true) {
      print('Koneksi Internet Stabil');
    } else {
      print('Koneksi tidak stabil');
    }
  });

  
}

Future<bool> cekKoneksiInternet() {
  return Future.delayed(Duration(seconds: 2), () {
    return true;
  });
}
