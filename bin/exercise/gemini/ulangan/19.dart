import 'dart:io';

void main() {
  // no 19
  ListProduk listProduk = ListProduk();
  print(listProduk); // jawabannya masih instance, normal

  final produk1 = Produk(nama: 'Buku', harga: 10000, jumlahStok: 20);
  final produk2 = Produk(nama: 'Pensil', harga: 2000, jumlahStok: 50);
  final produk3 = Produk(nama: 'Penghapus', harga: 1000, jumlahStok: 30);

  // misal mau nambahin manual:

  listProduk.tambahkan(produk1);
  listProduk.tambahkan(produk2);
  listProduk.tambahkan(produk3);

  listProduk.tampilkan();

  stdout.write('Masukkan nama produk yang ingin dicari: ');
  String namaDicari = stdin.readLineSync()!;
  listProduk.mencari(namaDicari);
}

class Produk {
  String nama;
  double harga;
  int jumlahStok;
  Produk({required this.nama, required this.harga, required this.jumlahStok});
}

class ListProduk {
  final List<Produk> anggota = [];

  void tambahkan(Produk a) {
    anggota.add(a);
  }

  void tampilkan() {
    if (anggota.isEmpty) {
      print('Belum ada data produk yang ditambahkan');
    } else {
      print('--- Inventaris Toko ---');
      for (var i = 0; i < anggota.length; i++) {
        final a = anggota[i];
        print('${i + 1}. ${a.nama} - Harga: ${a.harga}, Stok: ${a.jumlahStok}');
      }
      print('---');
    }
  }

  void mencari(String namaDicari) {
    for (var a in anggota) {
      if (a.nama.contains(namaDicari)) {
        print(
          'Produk ditemukan: ${a.nama} - Harga: ${a.harga}, Stok: ${a.jumlahStok}',
        );
      }
    }
  }
}
