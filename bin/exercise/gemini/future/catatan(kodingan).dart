// Future ini akan selesai setelah 2 detik
// dan akan menghasilkan nilai String 'Data berhasil dimuat'.
Future<String> ambilData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Data berhasil dimuat";
  });
}

void main() {
  print("Mulai memuat data...");

  // Memanggil fungsi yang mengembalikan Future
  Future<String> hasilFuture = ambilData();

  // Menempelkan callback .then()
  // 'nilai' adalah hasil dari Future ('Data berhasil dimuat')
  hasilFuture.then((nilai) {
    print(nilai); // Ini akan dicetak SETELAH 2 detik
  });

  print("Sambil menunggu, saya bisa melakukan hal lain...");
}
