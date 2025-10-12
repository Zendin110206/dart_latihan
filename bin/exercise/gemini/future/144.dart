void main() {
  // no 144
  print("A");
  Future.delayed(Duration(seconds: 2), () {
    print("C");
  });
  print("B");

  // Future<String> huruf = Future.delayed(Duration(seconds: 2), () {
  //   print('C');
  //   return 'C';
  // });

  // cuman ingin mengetahui bedanya kalau pakai return dan print, yang diaman saya yakin karea return akibat dari tipe data Future<String> mungkin klau mau tanpa return tinggal Future aja, atau Future<void>. Tapi aku coba juga kalau pake Future<Void> ada return nya dia gak error
}

// Prediksi Urutan Output
// Urutan output yang akan muncul di konsol adalah:

// A
// B
// C

// void waw() {
//   return 'w'; // padahal kek gini ga bisa, tapi kenapa kok Future<void bisa?
// }
