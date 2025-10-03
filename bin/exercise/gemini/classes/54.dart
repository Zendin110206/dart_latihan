void main() {
  // no 54
  var laporan = Laporan(judul: 'Penjualan Bulanan');
  laporan
      ._buatHeaderTes(); // tuh buat ngetes aja ya ini, bisa bisa aja kalau dalam 1 file dan di luar class, yang gak bisa adalah di beda file, private itu

  laporan.cetakLaporan('penjualan');
}

class Laporan {
  void _buatHeaderTes() {
    print('saya');
  }

  String judul;
  Laporan({required this.judul});
  String _buatHeader() {
    return '--- Laporan: $judul ---';
  }

  String _buatFooterr() {
    return '--- Akhir Laporan ---';
  }

  void cetakLaporan(String isi) {
    String kalimat1 = _buatHeader();
    print(kalimat1);
    print('Ini adalah isi dari laporan $isi');
    String kalimat2 = _buatFooterr();
    print(kalimat2);
  }
}
