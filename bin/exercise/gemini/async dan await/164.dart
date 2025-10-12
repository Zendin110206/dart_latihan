void main() async {
  // no 164
  print('Memuat laporan...');
  final hasil = await Future.wait([getScores(), getBiodata()]);
  print('Setelah 3 ditik');
  print(
    'Melihat bentuk asli: $hasil',
  ); // [{Matematika: 90, Fisika: 85}, {nama: Budi, kelas: XIIA}]
  // hmm gimana biar rapi jadi seperti harapan output, mulai lupa aku

  print('--- Laporan Siswa ---');

  print('Nama: ${hasil[1].values.first}');
  print('Kelas: ${hasil.last.values.last}');

  print('Skor:');
  for (var element in hasil.first.entries) {
    print("- ${element.key}: ${element.value}");
  }
}

Future<Map<String, int>> getScores() async {
  await Future.delayed(Duration(seconds: 2));
  return {'Matematika': 90, 'Fisika': 85};
}

Future<Map<String, String>> getBiodata() async {
  await Future.delayed(Duration(seconds: 3));
  return {'nama': 'Budi', 'kelas': 'XIIA'};
}

// itu diatas murni karyaku, tapi aku sadar kalau itu sangat jelek dan memaska banget gnya untuk memenuhi output, cara yang best practises dari aku nanya google adala kek gini:

// void main() async {
//   print('Memuat laporan...');

//   // 1. Jalankan kedua future secara paralel
//   // Hasilnya adalah List<Object> karena tipe data hasilnya berbeda
//   final results = await Future.wait([getScores(), getBiodata()]);

//   // 2. Casting hasil ke variabel dengan tipe data yang spesifik dan nama yang jelas
//   // Ini adalah langkah kunci yang membuat kode lebih aman dan mudah dibaca.
//   final scores = results[0] as Map<String, int>;
//   final biodata = results[1] as Map<String, String>;

//   // 3. Sekarang, proses data menggunakan variabel yang sudah jelas tipenya
//   print('--- Laporan Siswa ---');
//   print('Nama: ${biodata['nama']}');    // Akses dengan kunci, bukan posisi
//   print('Kelas: ${biodata['kelas']}');   // Jauh lebih aman!

//   print('Skor:');
//   // Gunakan forEach untuk iterasi yang lebih bersih pada Map
//   scores.forEach((subject, score) {
//     print('  - $subject: $score');
//   });
// }

// Future<Map<String, int>> getScores() async {
//   await Future.delayed(Duration(seconds: 2));
//   return {'Matematika': 90, 'Fisika': 85};
// }

// Future<Map<String, String>> getBiodata() async {
//   await Future.delayed(Duration(seconds: 3));
//   return {'nama': 'Budi', 'kelas': 'XIIA'};
// }