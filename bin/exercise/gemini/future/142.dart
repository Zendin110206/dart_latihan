Future<String> unduhGambar() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Data berhasil dimuat";
  });
}

void main() {
  // no 142 
  // apakah maksud nya begini? karena saya masih kurang nangkep bedanya apa dengan no 141
  final hasilFuture = unduhGambar();
  hasilFuture.then((nilai) {
    print(nilai);
  });
}
