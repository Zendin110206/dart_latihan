void main() async {
  // no 163
  try {
    final hasil = await verifikasiStok(
      'B001',
    ); // ganti sini kalau mau salah pertama
    print(hasil);
    try {
      final hasil2 = await prosesPembayaran(
        hasil,
      ); // ganti sini kalau mau salah kedua
      print(hasil2);
      try {
        final hasil3 = await kirimBarang('salah ngisi');
        print(hasil3);
      } catch (e) {
        print('Terjadi kesalahan: $e');
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
    }
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }

  // ini adalah cara paling tidak efektif atau sulit dibacaa

  // ini versi lebih baik:
  try {
    final statusStok = await verifikasiStok('B001');
    print(statusStok);

    final statusBayar = await prosesPembayaran(statusStok);
    print(statusBayar);

    final statusKirim = await kirimBarang(statusBayar);
    print(statusKirim);
  } catch (e) {
    print("Seluruh proses gagal karena: $e");
  } // sama aja kkan? cuman lebih ekbaca kan
}

Future<String> verifikasiStok(String itemId) {
  return Future.delayed(
    Duration(seconds: 1),
    () {
      if (itemId == 'B001') {
        return 'Stok tersedia';
      } else {
        throw Exception('Stok Habis');
      }
    },
  ); // mau nanya di kasus real di flutter rmungkin, itu kita enggak nentuin sendiri an future delayed nya?
}

Future<String> prosesPembayaran(String statusStok) {
  return Future.delayed(Duration(seconds: 1), () {
    if (statusStok == 'Stok tersedia') {
      return 'Pembayaran berhasil';
    } else {
      throw Exception('Pembayaran dibatalkan');
    }
  });
}

Future<String> kirimBarang(String statusBayar) {
  return Future.delayed(Duration(seconds: 1), () {
    if (statusBayar == 'Pembayaran berhasil') {
      return 'Pembayaran berhasil';
    } else {
      throw Exception('Pembayaran dibatalkan');
    }
  });
}
