void main() {
  // no 18

  Set<Peserta> kumpulanProduk = {
    Peserta(id: "A01", nama: "Andi"),
    Peserta(id: "B02", nama: "Budi"),
    Peserta(id: "A01", nama: "Andi Saputra"),
  };

  print('Daftar peserta unik: $kumpulanProduk ');
  print('Jumlah Peserta: ${kumpulanProduk.length}');
}

class Peserta {
  String id;
  String nama;

  Peserta({required this.id, required this.nama});

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(Object other) => other is Peserta && other.id == id;

  // Representasi string untuk mempermudah pencetakan.
  @override
  String toString() {
    return 'Peserta(id: $id, nama: $nama)';
  }
}
