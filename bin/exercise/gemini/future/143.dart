void main() {
  // no 143
  // mungkin maksudnya no 141 dan 143 ini tanpa bikin fungsi ya? seperti dibawah ini?

  Future<int> angka = Future.delayed(Duration(seconds: 2), () {
    return 10 + 5;
  });

  angka.then((hasil) {
    print('Hasil Perhitungan: $hasil');
  });

  print('Ngetes lagi, ini muncul duluan');
}
