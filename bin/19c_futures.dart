// ================================================
// FUTURE (Bab 2) — Mulai sekarang, tunggu nanti
// ================================================
//
// Fokus:
// - Kita MULAI request (Future) SEKARANG
// - Sambil nunggu, kita kerjakan hal lain (program tetap jalan)
// - NANTI, baru kita "await" (tunggu) saat hasilnya dibutuhkan
//
// Semua delay di bawah cuma simulasi (seolah-olah fetch internet).

Future<void> main() async {
  print('A) Mulai program');

  // 1) Mulai 2 "request" sekaligus (tidak menunggu di sini)
  final pesananNasi = fetch('Nasi', 2000); // janji: siap dalam 2 detik
  final pesananTeh = fetch('Teh', 1000); // janji: siap dalam 1 detik
  print('B) Pesanan dikirim. Kita lanjut kerja lain...');

  // 2) Kerja lain sambil menunggu (program TIDAK nge-freeze)
  hitungCepat(); // tugas ringan

  print('C) Saat ini kita BELUM ambil hasil. Dua pesanan masih proses.');

  // 3) Sekarang kita BUTUH minum dulu → ambil yang Teh dulu
  final teh = await pesananTeh; // hanya nunggu Teh (± sisa waktunya)
  print('D) Datang duluan: $teh (kita minum dulu)');

  // 4) Nanti, pas lapar, baru ambil Nasi
  final nasi = await pesananNasi; // sekarang baru nunggu Nasi
  print('E) Datang kemudian: $nasi (kita makan)');

  print('F) Selesai.\n');

  // BONUS: kalau mau nunggu keduanya sekaligus (sekali tunggu)
  print('G) Mulai dua pesanan baru, tunggu bersamaan:');
  final f1 = fetch('Mie', 1500);
  final f2 = fetch('Jus', 1200);
  final hasil = await Future.wait([f1, f2]); // tunggu dua-duanya bareng
  print('H) Keduanya siap bersamaan: $hasil'); // [Mie siap, Jus siap]

  print('I) Done.');
}

// Simulasi fetch yang butuh waktu `ms` lalu mengembalikan String hasil.
Future<String> fetch(String nama, int ms) async {
  await Future.delayed(Duration(milliseconds: ms));
  return '$nama siap';
}

// Kerjaan ringan (sinkron) biar kelihatan program tetap jalan
void hitungCepat() {
  print('   > Kerja lain: hitung 1+1...');
  final x = 1 + 1;
  print('   > Hasil hitung: $x');
}
