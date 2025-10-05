void main() {
  // no 6
  print(salam(nama: 'Andi', gelar: 'Bapak'));
}

String salam({required String nama, required String gelar}) {
  return 'Selamat pagi, $gelar $nama';
}
