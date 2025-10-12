Future<String> unduhGambar() async {
  return await Future.delayed(Duration(seconds: 3), () {
    return 'Gambar berhasil diunduh';
  });
}
// seperti itu kah? kok aneh ya, pengaruhnya juga apa? apakah pemanggilan di main nanti? mari kita lihat

// owh ternyata setelah tanya di google bukan kek gitu tapi kek gini

// 1. Deklarasikan fungsi dengan `async` dan return type `Future<String>`
Future<String> unduhGambar2() async {
  print("Mulai mengunduh gambar, proses butuh 2 detik...");

  // 2. Gunakan `await` untuk menjeda eksekusi fungsi ini sampai Future selesai.
  await Future.delayed(Duration(seconds: 2));

  // 3. Setelah jeda selesai, kembalikan nilai String.
  //    Kata kunci `return` dalam fungsi `async` secara otomatis
  //    membungkus nilai dalam Future yang telah selesai (completed Future).
  return "✅ Gambar berhasil diunduh.";
}

void main() async {
  // no 152
  // apakah butuh async disini? karena udah ditulis di fungsi, barangkali gak usah ( ini aku tulis saat kode masih kosong)

  final data = unduhGambar();
  print(data);
  data.then(
    (data) {
      print(data);
    },
  ); // masih bisa bisa aja yaa pakai ini dan ini tampil paling akhir kalau 3 detik / dan totalnya 3 detik, semenjak ini dipangil, jadi bukan nunggu 2 detik dari awai baru + 3detik

  String hasil1 = await unduhGambar(); // ini juga boleh boleh aja
  String hasil2 = await unduhGambar2();

  // Cetak hasil yang sudah didapatkan.
  print(hasil2);
  print(hasil1);

  print("Program selesai.");
}

// hmm masih belum dapet hang of it. masih sedikit aneh syntaxnya terus pause pause urutannya masih belum terlalu keliatan kalau kodenya yang kek gitu, siapa punya siapa dan siapa yang dicetak duluan
