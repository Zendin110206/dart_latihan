// =====================================================
// ERROR HANDLING — SUPER DASAR (on, catch, finally, throw)
// =====================================================

void main() {
  print('=== 1) try + catch: tangkap error umum ===');
  try {
    final x = 10 ~/ 0; // bagi nol → error
    print('Hasil: $x'); // baris ini tidak jalan
  } catch (e) {
    print('Ketangkap di catch: $e');
  }
  // (tanpa finally, program lanjut biasa)

  print('\n=== 2) on + catch: tangkap error SPESIFIK ===');
  try {
    final n = int.parse('bukan-angka'); // FormatException
    print('Angka: $n');
  } on FormatException catch (e) {
    // MASUK SINI karena tipenya FormatException
    print('Format salah (on FormatException): ${e.message}');
  } catch (e) {
    // cadangan untuk error lain yang bukan FormatException
    print('Error lain: $e');
  }

  print('\n=== 3) finally: selalu jalan (ada error / tidak) ===');
  try {
    print('Mulai kerja...');
    final y = 100 ~/ 0; // error
    print(y); // tidak jalan
  } catch (e) {
    print('Ada error: $e');
  } finally {
    // SELALU dijalankan (tutup file/koneksi/loader, dll)
    print('Bereskan resource di finally.');
  }

  print('\n=== 4) throw: lempar error sendiri (validasi) ===');
  try {
    simpanUmur(-3); // umur tidak valid → kita LEMPAR error
    print('Tersimpan!'); // tidak jalan
  } catch (e) {
    print('Gagal simpan: $e');
  }

  print('\n=== Selesai ===');
}

// Lempar error sendiri kalau data tidak valid
void simpanUmur(int umur) {
  if (umur < 0) {
    // "throw" = lempar error ke luar agar ditangani try/catch di pemanggil
    throw ArgumentError('Umur tidak boleh negatif: $umur');
  }
  // ... lanjut proses simpan
}
