import 'dart:io';

void main() {
  // no 42
  stdout.write('Masukkan Teks untuk diubah ke int: ');
  String inputString = stdin.readLineSync()!;
  int? hasilKonversi = konversiKeInt(inputString);
  print('Hasil konversi \'$inputString\': $hasilKonversi');
}

int konversiKeInt(String teks) {
  try {
    int teksKeInt = int.parse(teks);
    print("Angka berhasil di-parse: $teksKeInt");
    return teksKeInt;
  } on FormatException {
    print("Error: Format input salah.");
    return 0;
  } catch (e) {
    // 'catch (e)' akan menangkap SEMUA jenis error lain yang mungkin terjadi
    print("Terjadi error yang tidak diketahui: $e");
    return 0;
  }
}
