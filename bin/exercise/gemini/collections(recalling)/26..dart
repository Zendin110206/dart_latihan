void main() {
  // no 26

  var hargaBarang = {"Buku": 5000.0, "Pensil": 1500.0, "Penghapus": 1000.0};
  var stokBarang = {"Buku": 20, "Pensil": 50, "Penghapus": 30};
  double total = 0;
  for (var element in hargaBarang.keys) {
    total += hargaBarang[element]! * stokBarang[element]!;
  }

  print('Total nilai inventaris: $total');
}


// best practises nya biar enggak maksa kalau null : 

// void main() {
//   var hargaBarang = {"Buku": 5000.0, "Pensil": 1500.0, "Penghapus": 1000.0};
//   var stokBarang = {"Buku": 20, "Pensil": 50, "Penghapus": 30};
//   double total = 0;

//   for (var key in hargaBarang.keys) {
//     final harga = hargaBarang[key];
//     final stok = stokBarang[key];

//     // Hanya hitung jika harga dan stok keduanya ada (tidak null)
//     if (harga != null && stok != null) {
//       total += harga * stok;
//     }
//   }
//   print('Total nilai inventaris: $total');
// }

