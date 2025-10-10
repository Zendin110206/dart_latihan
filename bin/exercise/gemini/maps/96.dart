void main() {
  // no 96
  List<String> kataKata = ["apel", "jeruk", "mangga", "apel", "jeruk", "apel"];

  // cara 1:
  Map<String, int> frekuensiKata = {};

  for (var element in kataKata) {
    if (frekuensiKata.containsKey(element)) {
      frekuensiKata[element] =
          frekuensiKata[element]! +
          1; // tidak bisa langsung += 1 karena null safety
    } else {
      frekuensiKata.addAll({element: 1});
      // Catatan: Menggunakan frekuensiKata.addAll({kata: 1}); juga bisa ( ini coba coba aja) dan aku sengaja tidak pakai fungsi karena yang penting intinya aja yaaa,
      // tapi frekuensiKata[kata] = 1; lebih ringkas dan umum.
    }
  }

  print('Frekuensi kata: $frekuensiKata');
}


// cara 2 dengan fungsi

// void main() {
//   List<String> kataKata = ["apel", "jeruk", "mangga", "apel", "jeruk", "apel"];

//   Map<String, int> frekuensi = hitungFrekuensiKata(kataKata);

//   print('Frekuensi kata: $frekuensi');
// }

// Map<String, int> hitungFrekuensiKata(List<String> daftarKata) {
//   Map<String, int> frekuensiKata = {};

//   for (String kata in daftarKata) {
//     if (frekuensiKata.containsKey(kata)) {
//       frekuensiKata[kata] = frekuensiKata[kata]! + 1;
//     } else {
//       frekuensiKata[kata] = 1;
//     }
//   }

//   return frekuensiKata;
// }