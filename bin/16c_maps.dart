// ===============================================
// MAPS DI DART — versi super awam
// ===============================================
//
// Inti konsep:
// - Map = pasangan key -> value (kunci -> nilai).
// - Key harus UNIK (1 key = 1 value).
// - Akses data pakai KEY (bukan index).
//
// Jebakan klasik:
// - "{}" TANPA apa-apa = Map kosong (Map<dynamic, dynamic>).
// - Set kosong harus "<T>{}", sedangkan Map kosong harus "<K, V>{}".
//   Contoh Set kosong: final s = <int>{};
//   Contoh Map kosong: final m = <String, int>{};
//
// Di bawah ada contoh-contoh pendek + output yang diharapkan.
//

void main() {
  print('====== 1) Bikin Map ======');

  // Map literal (langsung isi)
  final biodata = {'nama': 'Zaenal', 'umur': 20};
  print(biodata); // {nama: Zaenal, umur: 20}

  // Map kosong (TULIS tipe key & value)
  final skor = <String, int>{};
  print(skor); // {}

  // "{}" tanpa tipe adalah Map juga (tapi dynamic, hindari):
  final dynamicMap = {};
  print(dynamicMap.runtimeType); // _Map<dynamic, dynamic>

  print('\n====== 2) Set (tunjukkan bedanya dengan Map kosong) ======');
  // Set kosong yang benar:
  final setKosong = <int>{};
  print(setKosong.runtimeType); // _Set<int>

  print('\n====== 3) Get / Set nilai ======');

  // Tambah / set value ke Map
  skor['Budi'] = 10; // new key
  skor['Budi'] = 15; // timpa value
  skor['Ani'] = 20;
  print(skor); // {Budi: 15, Ani: 20}

  // Baca value
  print(skor['Budi']); // 15
  print(skor['Cici']); // null (key tidak ada)

  // Default saat baca (biar gak pusing null)
  final nilaiCici = skor['Cici'] ?? 0;
  print(nilaiCici); // 0

  print('\n====== 4) contains / remove / length ======');

  print(skor.containsKey('Budi')); // true
  print(skor.containsKey('Dodi')); // false

  skor.remove('Budi'); // hapus 1 key
  print(skor); // {Ani: 20}

  print(skor.length); // 1
  skor.clear(); // kosongkan map
  print(skor); // {}

  print('\n====== 5) Iterasi (loop Map) ======');

  final m = {'a': 1, 'b': 2, 'c': 3};

  // Cara paling enak: entries (dapat key & value)
  for (final e in m.entries) {
    print('${e.key} -> ${e.value}');
  }

  // Atau pisah keys / values
  for (final k in m.keys) {
    print('key: $k');
  }
  for (final v in m.values) {
    print('value: $v');
  }

  print('\n====== 6) set kalau belum ada (putIfAbsent) ======');

  final akun = <String, String>{};
  akun.putIfAbsent('email', () => 'x@example.com'); // set
  akun.putIfAbsent('email', () => 'y@example.com'); // diabaikan (sudah ada)
  print(akun); // {email: x@example.com}

  print('\n====== 7) update nilai (cocok buat counter/frekuensi) ======');

  final count = <String, int>{};

  // Tambah 1 untuk 'apel', kalau belum ada jadikan 1
  count.update('apel', (lama) => lama + 1, ifAbsent: () => 1);
  count.update('apel', (lama) => lama + 1, ifAbsent: () => 1);
  count.update('jeruk', (lama) => lama + 1, ifAbsent: () => 1);
  print(count); // {apel: 2, jeruk: 1}

  // updateAll (opsional): ubah semua value
  count.updateAll((k, v) => v * 10);
  print(count); // {apel: 20, jeruk: 10}

  print('\n====== 8) Gabung Map (spread ...) ======');

  final a = {'x': 1, 'y': 2};
  final b = {'y': 99, 'z': 3};

  final gabung1 = {...a, ...b}; // kanan menimpa kiri
  print(gabung1); // {x: 1, y: 99, z: 3}

  // Cara lain:
  final gabung2 = {}
    ..addAll(a)
    ..addAll(b);
  print(gabung2); // {x: 1, y: 99, z: 3}

  print('\n====== 9) Word count (contoh nyata) ======');

  final kata = ['halo', 'halo', 'hai', 'halo', 'apa'];
  final freq = <String, int>{};
  for (final w in kata) {
    freq.update(w, (n) => n + 1, ifAbsent: () => 1);
  }
  print(freq); // {halo: 3, hai: 1, apa: 1}

  print('\n====== 10) Nested Map (Map di dalam Map) ======');

  Map<String, dynamic> user = {
    'nama': 'Zaenal',
    'alamat': {'kota': 'Bandung', 'kodePos': '40111'},
  };
  // akses aman pakai ? karena mungkin null
  print(user['alamat']?['kota']); // Bandung

  print('\n====== 11) Map<key, List<...>> (grup data) ======');

  // Misal: grup nama berdasarkan huruf awal
  final data = ['Zaenal', 'Zaki', 'Abidin', 'Budi', 'Arif'];
  final grup = <String, List<String>>{};

  for (final nama in data) {
    final awal = nama.substring(0, 1).toUpperCase();
    // siapkan list kosong kalau belum ada
    grup.putIfAbsent(awal, () => <String>[]);
    // lalu tambahkan nama
    grup[awal]!.add(nama);
  }

  print(grup);
  // Contoh output: {Z: [Zaenal, Zaki], A: [Abidin, Arif], B: [Budi]}

  print('\n====== 12) Ringkasan ======');
  print('- Map = key -> value, key unik.');
  print('- Map kosong: <K, V>{}.  Set kosong: <T>{}.');
  print('- Set/get: map[key] = val;  baca: map[key] / map[key] ?? default');
  print(
    '- Hapus: remove(key);  Cek: containsKey(key);  Loop: entries/keys/values',
  );
  print('- putIfAbsent & update itu sahabatmu buat inisialisasi & hitung.');
}
