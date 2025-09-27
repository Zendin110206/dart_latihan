void main() {
  // no 24
  cetakPesanan(namaBarang: 'Buku Tulis', jumlah: 10);

  cetakPesanan(
    namaBarang: 'Pensil',
    jumlah: 24,
    catatan: 'Tolong dibungkus kado',
    alamatPengiriman: 'Jl. Merdeka No. 17',
  );
}

void cetakPesanan({
  required String namaBarang,
  required int jumlah,
  String? catatan,
  String alamatPengiriman = "Ambil di toko",
}) {
  print('--- Pesanan Masuk ---');
  if (catatan == null) {
    print('''Barang: $namaBarang
Jumlah: $jumlah
Alamat: $alamatPengiriman
---------------------''');
  } else {
    print('''Barang: $namaBarang
Jumlah: $jumlah
Catatan: $catatan
Alamat: $alamatPengiriman
---------------------''');
  }
}
