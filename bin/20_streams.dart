// =====================================================
// FUTURE & STREAM — versi super pemula (satu file)
// =====================================================
//
// Konsep kunci (cukup ingat ini dulu):
// - Future = JANJI satu hasil di masa depan (sukses atau error).
// - await  = "tunggu dulu janji ini ditepati", hanya boleh dalam fungsi async.
// - Stream = ALIRAN banyak hasil (datang berkali-kali).
// - await for = "tunggu item stream satu-per-satu", hanya boleh dalam async.
//
// Catatan penting:
// - await TIDAK mem-freeze seluruh program; dia cuma "ngerem" fungsi itu.
// - Tanpa await, yang kamu pegang hanyalah janji (Future), BUKAN nilainya.
// =====================================================

import 'dart:async'; // untuk Stream/Timer/Future (umumnya sudah tersedia)

Future<void> main() async {
  print('=== BAGIAN 1 — FUTURE DASAR ===');

  // A) Tanpa await: kamu cuma pegang janji, bukan hasilnya.
  final janji = Future.delayed(const Duration(seconds: 1), () => 'DATA');
  print('1) janji (tanpa await) = $janji'); // Instance of 'Future<String>'

  // B) Dengan await: baris setelah ini MENUNGGU sampai hasilnya ada.
  final hasil = await janji; // ngerem di sini ~1 detik
  print('2) hasil (pakai await) = $hasil'); // 'DATA'

  // C) Contoh paralel: mulai dua janji sekaligus, lalu tunggu bareng.
  final a = Future.delayed(const Duration(milliseconds: 800), () => 'A');
  final b = Future.delayed(const Duration(milliseconds: 800), () => 'B');
  // Keduanya sudah dimulai; total tunggu ~0.8s, bukan 1.6s:
  final hasilAB = await Future.wait([a, b]);
  print('3) Future.wait paralel = $hasilAB'); // [A, B]

  // D) Tangkap error Future dengan try/catch di sekitar await.
  try {
    final x = await Future<String>.delayed(
      const Duration(milliseconds: 300),
      () => throw Exception('Network error (simulasi)'),
    );
    print(x); // tidak akan jalan
  } catch (e) {
    print('4) Tangkap error Future: $e');
  }

  print('\n=== BAGIAN 2 — STREAM DASAR ===');

  // E) Stream generator: mengirim angka 5,4,3,2,1 tiap 300ms.
  //    - async*  = fungsi pembuat stream
  //    - yield   = kirim satu nilai ke pendengar
  print('5) await for (dengar angka satu-per-satu):');
  await for (final n in countDown(from: 5, delayMs: 300)) {
    print('   -> $n'); // akan muncul 5,4,3,2,1 (bertahap)
  }
  print('   -> GO!');

  // F) listen: daftar pendengar (callback). Baris setelah listen JALAN dulu.
  print('\n6) listen (tidak menunggu otomatis):');
  final sub = countDown(from: 3, delayMs: 250).listen(
    (n) => print('   L: $n'),
    onDone: () => print('   L: done'),
    onError: (e) => print('   L: error $e'),
  );
  print('   (baris ini tampil duluan karena listen tidak menunggu)');

  // Kalau ingin menunggu stream selesai saat pakai listen:
  await sub.asFuture(); // lanjut setelah onDone terpanggil

  // G) Bonus kecil: tugas lain tetap jalan saat kamu menunggu
  //    (lihat "tick" tetap muncul saat kita menunggu 1 detik).
  print(
    '\n7) Demonstrasi: await ngerem fungsi ini, tapi tugas lain tetap hidup',
  );
  final timer = Timer.periodic(
    const Duration(milliseconds: 200),
    (_) => print('   tick'),
  );

  await Future.delayed(const Duration(seconds: 1)); // ngerem di sini ~1s
  timer.cancel();
  print('   done (timer dimatikan)');

  print('\n=== SELESAI ===');
}

// -----------------------------------------------------
// STREAM GENERATOR: kirim angka mundur (5,4,3,...) dengan jeda
// -----------------------------------------------------
// - from    : mulai dari angka berapa (default 5)
// - delayMs : jeda antar angka dalam milidetik (default 500ms)
// - return  : Stream<int> (aliran angka)
Stream<int> countDown({int from = 5, int delayMs = 500}) async* {
  for (var i = from; i > 0; i--) {
    yield i; // kirim satu angka sekarang
    await Future.delayed(Duration(milliseconds: delayMs)); // jeda
  }
}
