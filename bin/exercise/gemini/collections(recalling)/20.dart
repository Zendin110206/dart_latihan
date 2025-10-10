void main() {
  // no 20

  var semuaBarang = [
    Barang("B01", "Buku Tulis"),
    Barang("P01", "Pensil 2B"),
    Barang("B01", "Buku Gambar"), // ID sama dengan yang pertama
    Barang("H01", "Penghapus"),
    Barang("P01", "Pensil Warna"), // ID sama dengan yang kedua
  ];

  var setBaru = semuaBarang.toSet();
  print('Jumlah jenis barang unik: ${setBaru.length}');
}

class Barang {
  String id;
  String nama;

  Barang(this.id, this.nama);

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(Object other) => other is Barang && other.id == id;
}
