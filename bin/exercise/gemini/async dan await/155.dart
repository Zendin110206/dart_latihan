Future<Map<String, dynamic>> ambilDataPengguna() async {
  await Future.delayed(Duration(seconds: 2));
  return {
    "nama": "Siti",
    "umur": 28,
  }; // nah kan kamu pernah sebelumnya bilang kalau hindari segala hal yang dynamic, katanya mending pake object/ hmm kenapa? yang au lihat ya, kalau ini dynamic, dia bisa kek ada penjumlahan gitu, kalau object ga bisa, eh ga tau ya kalau salah, kemarin pas latihan sama kamu udah pernah nyoba gituuu aku lupa apa perbedannya
}

void main() async {
  // no 155
  final getData = ambilDataPengguna();
  print('Menunggu 2 detik');
  final dataHasil = await getData;
  print(dataHasil);
}
