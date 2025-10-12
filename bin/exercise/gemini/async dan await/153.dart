void main() async {
  // no 153
  // saya melihat ada kek async* gitu di auti complete
  print('Mulai memuat perhitungan');
  final data = hitungJumlah(20, 30);
  int hasil =
      await data; // baru ngeh juga kenapa disini boleh int? enggak Future<int> kek biasanya?
  print(hasil);
  print('Program selesai');
}

Future<int> hitungJumlah(int a, int b) async {
  await Future.delayed(Duration(seconds: 1));
  return a + b;
}
