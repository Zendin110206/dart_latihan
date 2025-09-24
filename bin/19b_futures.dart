// ================================================
// SYNC vs ASYNC + FUTURE — contoh super sederhana
// ================================================

Future<void> main() async {
  print('=== 1) SINKRON: antri satu-satu ===');
  print('Hey');
  print('Hello');
  print('Greetings');

  print('\n=== 2) ASINKRON: kirim request TAPI TIDAK menunggu ===');
  final janjiA = fetchData('A', 2000); // 2 detik
  print('Baris setelah kirim request A langsung jalan (tidak nunggu).');
  print('Kita bisa kerjakan hal lain dulu...');
  // Di titik ini, janjiA masih "pending". Nanti kalau selesai, baru ada hasilnya.

  // Kalau kamu ingin pakai hasilnya di sini, kamu BISA menunggu:
  final hasilA = await janjiA; // <- sekarang kita PILIH untuk menunggu selesai
  print('Hasil request A datang: $hasilA');

  print('\n=== 3) ASINKRON: menunggu dengan await ===');
  print('Kirim request B, kali ini LANGSUNG ditunggu di baris ini...');
  final hasilB = await fetchData('B', 1500); // 1.5 detik
  print('Hasil request B datang: $hasilB');
  print('Baris setelah await B baru jalan sekarang.');

  print('\n=== 4) TANPA await: kamu hanya pegang JANJI, bukan data ===');
  final janjiC = fetchData('C', 1000);
  print(
    'janjiC = $janjiC',
  ); // Instance of 'Future<String>' (ini JANJI, bukan datanya!)
  // Kalau butuh datanya, harus await:
  final hasilC = await janjiC;
  print('Hasil C: $hasilC');

  print('\n=== 5) Paralel: mulai dua request sekaligus, tunggu bersamaan ===');
  final f1 = fetchData('X', 2000);
  final f2 = fetchData('Y', 2000);
  // Keduanya berjalan bersamaan; total waktu ~2 detik, bukan 4.
  final results = await Future.wait([f1, f2]);
  print('Dua hasil sekaligus: $results'); // [Data X, Data Y]

  print(
    '\n=== 6) Error saat fetch: tangkap dengan try/catch di sekitar await ===',
  );
  try {
    final hasilError = await fetchError('Z', 800);
    print('Harusnya tidak sampai sini: $hasilError');
  } catch (e) {
    print('Terjadi error saat fetch Z: $e');
  }

  print('\n=== Selesai ===');
}

// Simulasi fetch: butuh waktu 'ms' lalu mengembalikan String
Future<String> fetchData(String label, int ms) async {
  await Future.delayed(Duration(milliseconds: ms));
  return 'Data $label';
}

// Simulasi fetch yang gagal
Future<String> fetchError(String label, int ms) async {
  await Future.delayed(Duration(milliseconds: ms));
  throw Exception('Network error pada $label');
}
