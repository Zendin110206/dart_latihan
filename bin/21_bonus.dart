// =====================================================
// LIST vs SET vs MAP vs RECORD — versi super pemula
// =====================================================
//
// Ingat singkatnya:
// - List  : urutan (index), boleh duplikat, bisa nambah/hapus bebas
// - Set   : kumpulan unik (TIDAK ada duplikat), urutan tidak penting
// - Map   : pasangan key -> value (kamus)
// - Record: paket nilai tetap (tuple), bukan koleksi (bukan List/Set/Map)
// =====================================================

void main() {
  print('===== 1) LIST =====');
  // List = daftar berurutan, akses pakai index [0], [1], ...
  final List<int> angka = [10, 20, 30];
  print(angka); // [10, 20, 30]
  print(angka[0]); // 10 (akses index ke-0)

  // List boleh ada duplikat:
  angka.add(20);
  print(angka); // [10, 20, 30, 20]

  // Sisip, ubah, hapus:
  angka.insert(1, 99); // sisip 99 di index 1
  print(angka); // [10, 99, 20, 30, 20]
  angka[0] = 11; // ubah elemen di index 0
  print(angka); // [11, 99, 20, 30, 20]
  angka.remove(20); // hapus ELEMEN pertama yang nilainya 20
  print(angka); // [11, 99, 30, 20]
  angka.removeAt(1); // hapus di index 1 (yaitu 99)
  print(angka); // [11, 30, 20]

  // Dedup (menghilangkan duplikat) cepat: List -> Set -> List lagi
  final dedup = angka.toSet().toList();
  print('dedup: $dedup'); // [11, 30, 20] (unik semua)

  print('\n===== 2) SET =====');
  // Set = kumpulan unik (tidak ada duplikat). Tidak pakai index!
  // ignore: equal_elements_in_set buat contoh aja
  final Set<String> buah = {'apel', 'apel', 'pisang'};
  print(buah); // {apel, pisang} (apel didedup otomatis)
  buah.add('jeruk');
  buah.add('jeruk'); // ignore (sudah ada)
  print(buah); // {apel, pisang, jeruk}

  // Cek keberadaan:
  print(buah.contains('apel')); // true
  buah.remove('pisang');
  print(buah); // {apel, jeruk}

  // Set BUKAN daftar berindeks -> tidak bisa buah[0]
  // print(buah[0]); // ❌ ERROR: Set tidak punya index

  // Operasi himpunan:
  final setA = {1, 2, 3};
  final setB = {3, 4, 5};
  print('union     : ${setA.union(setB)}'); // {1, 2, 3, 4, 5}
  print('intersection: ${setA.intersection(setB)}'); // {3}
  print('difference : ${setA.difference(setB)}'); // {1, 2}

  print('\n===== 3) MAP =====');
  // Map = pasangan key -> value
  // Kunci (key) harus unik. Akses pakai ['key'].
  final Map<String, int> nilai = {'zaenal': 90, 'abidin': 75};
  print(nilai); // {zaenal: 90, abidin: 75}
  print(nilai['zaenal']); // 90

  // Tambah / update:
  nilai['abidin'] = 80; // update
  nilai['soif'] = 70; // tambah
  print(nilai); // {zaenal: 90, abidin: 80, soif: 70}

  // Hapus:
  nilai.remove('soif');
  print(nilai); // {zaenal: 90, abidin: 80}

  // Iterasi keys / values / entries:
  print('keys   : ${nilai.keys}'); // (iterable of keys)
  print('values : ${nilai.values}'); // (iterable of values)
  for (final e in nilai.entries) {
    print('${e.key} -> ${e.value}');
  }

  // Hati-hati akses key yang mungkin tidak ada -> hasilnya null
  print(nilai['tidak ada']); // null
  // Gunakan default:
  final skor = nilai['abidin'] ?? 0; // kalau null, pakai 0
  print('skor abidin: $skor');

  print('\n===== 4) RECORD =====');
  // Record = paket kecil beberapa nilai. BUKAN koleksi.
  // Cocok buat "return lebih dari 1 nilai" tanpa bikin class.
  // Tipe record positional: (T1, T2, ...)
  final (x, y) = titik2D(); // destructuring (ambil dua nilai)
  print('titik: ($x, $y)');

  // Akses positional: $1, $2
  final r1 = ('halo', 123); // (String, int)
  print(r1); // (halo, 123)
  print(r1.$1); // 'halo'
  print(r1.$2); // 123

  // Named record: ({namaTipe: nilai, ...})
  final point = (x: 3, y: 4); // ({int x, int y})
  print(point); // (x: 3, y: 4)
  print(point.x); // 3
  print(point.y); // 4

  // Campuran: (positional, {named})
  final mixed = ('Zaenal', age: 21); // (String, {int age})
  print(mixed.$1); // 'Zaenal'
  print(mixed.age); // 21

  // Record bukan List/Map/Set:
  // mixed.add(...);        // ❌ ERROR
  // mixed['key'];          // ❌ ERROR

  // Equality: nilai sama -> equal
  print((1, 'a') == (1, 'a')); // true
  print((x: 1, y: 2) == (x: 1, y: 2)); // true

  print('\n===== 5) KAPAN PAKAI APA? (cek cepat) =====');
  print('- List : kalau butuh urutan & akses index, dan boleh duplikat.');
  print('- Set  : kalau butuh data unik (tanpa duplikat).');
  print('- Map  : kalau perlu pasangan key->value (kamus).');
  print(
    '- Record: kalau mau bawa beberapa nilai sekaligus (fixed), bukan koleksi.',
  );
}

// Fungsi contoh yang mengembalikan Record dua nilai (positional record)
(int, int) titik2D() {
  final x = 10;
  final y = 20;
  return (x, y); // record (int, int)
}
