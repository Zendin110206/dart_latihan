void main() {
  // no 25
  // 1. Inisialisasi Playlist Manager
  final playlistManager = PlaylistManager();

  // 2. Menambahkan Lagu dan Mencetak Pesan Sesuai Output
  playlistManager.tambahkanLagu(Lagu(judulLagu: 'A', namaArtis: 'X'));
  playlistManager.tambahkanLagu(Lagu(judulLagu: 'B', namaArtis: 'Y'));
  // Lagu ini dianggap duplikat karena judul dan artis sama (berdasarkan operator == yang baru)
  playlistManager.tambahkanLagu(Lagu(judulLagu: 'A', namaArtis: 'X'));

  // 3. Menampilkan Isi Playlist
  playlistManager.tampilkanPlaylist();
}

// --- Kelas Entitas (Objek yang Disimpan) ---

class Lagu {
  String judulLagu;
  String namaArtis;

  Lagu({required this.judulLagu, required this.namaArtis});

  // Metode untuk mencetak detail lagu (digunakan di PlaylistManager)
  String get detail => 'Lagu $judulLagu oleh Artis $namaArtis';

  // Wajib di-override untuk Set<T> agar dapat menentukan kesamaan objek.
  // Dua Lagu dianggap sama JIKA judul dan artisnya SAMA PERSIS.
  @override
  bool operator ==(Object other) =>
      other is Lagu &&
      other.judulLagu == judulLagu &&
      other.namaArtis == namaArtis;

  // Wajib di-override. Dua objek yang dianggap '==' harus memiliki hashCode yang sama.
  @override
  int get hashCode => judulLagu.hashCode ^ namaArtis.hashCode;
  // Menggunakan bitwise XOR (^) untuk menggabungkan hash dari kedua properti.
}

// --- Kelas Pengelola (Playlist) ---

class PlaylistManager {
  // Menggunakan Set<Lagu> untuk secara otomatis mencegah duplikasi.
  final Set<Lagu> daftarLagu = {};

  void tambahkanLagu(Lagu lagu) {
    // Set.add() mengembalikan 'true' jika elemen BARU ditambahkan, 'false' jika elemen sudah ada.
    bool berhasilDitambahkan = daftarLagu.add(lagu);

    if (berhasilDitambahkan) {
      print('\'${lagu.detail}\' berhasil ditambahkan.');
    } else {
      print('\'${lagu.detail}\' sudah ada di playlist.');
    }
  }

  void tampilkanPlaylist() {
    print('--- Isi Playlist ---');
    int i = 1;
    // Iterasi menggunakan for-in
    for (var lagu in daftarLagu) {
      print('$i. ${lagu.detail}');
      i++;
    }
  }
}
