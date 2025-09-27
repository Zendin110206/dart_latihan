void main() {
  // no 23
  print(buatSalam('Budi'));
  print(buatSalam('Budi', 'Pagi'));
}

String buatSalam(String nama, [String? waktu]) {
  if (waktu == null) {
    return 'Halo, $nama';
  } else {
    return 'Selamat $waktu, $nama';
  }
}
