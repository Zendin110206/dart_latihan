Future<String> ambilNamaDepan() {
  return Future.delayed(Duration(seconds: 1), () => "John");
}

Future<String> ambilNamaBelakang() {
  return Future.delayed(Duration(seconds: 2), () => "Doe");
}

void main() async {
  // no 154
  print('Menunggu 3 detik');
  final data1 = ambilNamaDepan();
  final data2 = ambilNamaBelakang();

  String namaDepan = await data1;
  String namaBelakang = await data2;

  print('Nama lengkap: $namaDepan $namaBelakang');
}
