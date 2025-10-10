void main() {
  // no 5
  var dataAwal = [
    "Membersihkan kamar",
    "Mengerjakan PR Dart",
    "Mencuci piring",
  ];

  print('Tugas Awal: $dataAwal');

  dataAwal.remove('Mengerjakan PR Dart');
  print('Tugas Setelah Selesai: $dataAwal');
}
