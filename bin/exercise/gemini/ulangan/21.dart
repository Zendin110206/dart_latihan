void main() {
  // no 21
  Perpustakaan perpustakaan = Perpustakaan(
    judul: 'Laskar Pelangi',
    status: 'tersedia',
  );
  Perpustakaan perpustakaan2 = Perpustakaan(
    judul: 'Bumi Manusia',
    status: 'tersedia',
  );
  Perpustakaan perpustakaan3 = Perpustakaan(
    judul: 'Cantik itu Luka',
    status: 'tersedia',
  );

  DaftarBuku daftarBuku = DaftarBuku();

  daftarBuku.tambahkan(perpustakaan);
  daftarBuku.tambahkan(perpustakaan2);
  daftarBuku.tambahkan(perpustakaan3);
  daftarBuku.tampilkan();

  print('\nSetelah meminjam \'Bumi Manusia\n');
  daftarBuku.meminjam('Bumi Manusia');
}

class Perpustakaan {
  String judul;
  String
  status; // pengennya sih pake bool lebih professioanl dimana true = tersedia, tapi karena ini latiham kita gunakan secukupnya
  Perpustakaan({required this.judul, required this.status});
}

class DaftarBuku {
  final List<Perpustakaan> listBuku = [];

  void tambahkan(Perpustakaan a) {
    listBuku.add(a);
  }

  void meminjam(String judulPinjam) {
    bool bukuDitemukan = false;

    // Perulangan for tradisional: mengulang berdasarkan indeks
    for (int i = 0; i < listBuku.length; i++) {
      // Mengakses buku menggunakan indeks listBuku[i]
      if (listBuku[i].judul == judulPinjam &&
          listBuku[i].status == 'tersedia') {
        listBuku[i].status = 'dipinjam';
        bukuDitemukan = true;
        print('✅ Berhasil meminjam \'$judulPinjam\'.');
        break;
      } else if (listBuku[i].judul == judulPinjam &&
          listBuku[i].status == 'dipinjam') {
        bukuDitemukan = true;
        print(
          '❌ Gagal meminjam. Buku \'$judulPinjam\' sedang ${listBuku[i].status}.',
        );
        break;
      }
    }

    if (!bukuDitemukan) {
      print('⚠️ Buku \'$judulPinjam\' tidak ditemukan di perpustakaan.');
    }
    tampilkan();
  }

  void tampilkan() {
    if (listBuku.isEmpty) {
      print('Tidak ada');
    } else {
      print('--- Daftar Buku di Perpustakaan ---');
      for (var element in listBuku) {
        print('- ${element.judul} (Status: ${element.status})');
      }
    }
  }
}
