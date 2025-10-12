// Variabel global untuk melacak percobaan, agar kita bisa mensimulasikan kegagalan
int _percobaanFetch = 0;

/// Fungsi yang kadang berhasil, kadang gagal, untuk simulasi.
/// Akan gagal pada 2 panggilan pertama, dan berhasil pada panggilan ke-3.
Future<String> fetchData() async {
  // Simulasi penundaan jaringan
  await Future.delayed(Duration(seconds: 3));
  _percobaanFetch++;

  print('-> Mencoba menjalankan fetchData (percobaan ke-$_percobaanFetch)...');

  // Simulasikan kegagalan pada 2 percobaan pertama
  if (_percobaanFetch < 3) {
    throw Exception('Koneksi ke server gagal.');
  }

  // Berhasil pada percobaan ke-3 dan seterusnya
  return 'Data berhasil didapatkan!';
}

/// [WRAPPER FUNCTION]
/// Mencoba menjalankan [operation] sebanyak [retries] kali.
/// Jika [operation] berhasil, hasilnya akan langsung dikembalikan.
/// Jika semua percobaan gagal, akan melempar Exception.
Future<T> retry<T>(Future<T> Function() operation, {int retries = 3}) async {
  // 1. Gunakan for loop untuk mengontrol jumlah percobaan
  for (int i = 1; i <= retries; i++) {
    try {
      // 2. Coba jalankan operasi. 'await' akan menunggu hasilnya.
      print('Percobaan ke-$i dari $retries...');
      final result = await operation();

      // 3. Jika berhasil (tidak ada error), langsung kembalikan hasilnya.
      // Ini akan menghentikan loop dan keluar dari fungsi retry.
      print('Sukses pada percobaan ke-$i!');
      return result;
    } catch (e) {
      // 4. Jika gagal, tangkap error-nya.
      print('Percobaan ke-$i gagal: $e');

      // 5. Jika ini BUKAN percobaan terakhir, lanjutkan loop.
      if (i < retries) {
        print('Mencoba lagi...');
      }
    }
  }

  // 6. Jika loop selesai tanpa pernah berhasil (return),
  // berarti semua percobaan gagal. Lempar exception final.
  throw Exception('Semua $retries percobaan gagal.');
}

void main() async {
  print('--- Memulai proses dengan fungsi retry ---');
  try {
    // Kita memanggil 'retry' dan memberikan fungsi 'fetchData' sebagai argumen.
    // Perhatikan: kita menulis `fetchData`, bukan `fetchData()`.
    // Kita memberikan FUNGSI-nya, bukan HASIL-nya.
    final data = await retry(fetchData, retries: 4);
    print('\n✅ HASIL AKHIR: $data');
  } catch (e) {
    print('\n❌ GAGAL TOTAL: $e');
  }
}


// ini murni au nyerah, terlalu sulit, itu aku cuman copas ajaa dari ai, ini bener bener terlalu sulit sekali