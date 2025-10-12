void main() {
  // no 141
  print('Memulai memuat data');

  Future<String> hasilFuture = ambilData();

  print(
    hasilFuture,
  ); // disini dia menjadi instance, dan gak pernah kepanggil ( just the more you know as of why do we use then untuk menghasilkan outputnya)

  hasilFuture.then((nilai) {
    print(nilai);
  });

  print('Ini muncul duluan');
  print('Ini juga');
}

Future<String> ambilData() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Selamat datang di dunia Asynchronous!';
  });
}
