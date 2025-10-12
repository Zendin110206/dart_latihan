void main() {
  // no 148
  print('Setelah 3 detik');

  final data = Future.delayed(
    Duration(seconds: 2),
    () => ['Andi', 'Budi', 'Siti'],
  );

  data.then((nilai) => print('Berhasil mendapatkan ${nilai.length} pengguna'));
}
