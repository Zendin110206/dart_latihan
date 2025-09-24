import 'dart:io';

void main() {
  // =========================================
  // INPUT USER — SUPER DASAR (1 FILE, 1 MAIN)
  // =========================================

  // 1) Baca teks (String)
  print("=== 1) BACA TEKS ===");
  stdout.write("Masukkan nama: "); // tidak pindah baris otomatis
  String? nama = stdin.readLineSync(); // bisa null
  print("Halo, $nama!");

  // 1.1) Rapikan spasi depan/belakang dengan trim()
  stdout.write("Masukkan nickname (boleh ada spasi di pinggir): ");
  String? nickname = stdin.readLineSync();
  if (nickname != null) {
    nickname = nickname.trim();
  }
  print("Nickname rapi: '$nickname'");

  // 1.2) Cek kosong / null
  stdout.write("Masukkan hobi (boleh kosong): ");
  String? hobi = stdin.readLineSync();
  if (hobi == null || hobi.isEmpty) {
    print("Kamu belum isi hobi.");
  } else {
    print("Hobi kamu: $hobi");
  }

  // 2) Baca angka bulat (int) dan desimal (double)
  print("\n=== 2) BACA ANGKA ===");

  // Angka bulat (int) aman pakai tryParse
  int umur = 0;
  while (true) {
    stdout.write("Masukkan umur (int): ");
    String? inputUmur = stdin.readLineSync();
    if (inputUmur != null) inputUmur = inputUmur.trim();
    int? u = int.tryParse(inputUmur ?? "");
    if (u != null) {
      umur = u;
      break;
    }
    print("(!) Harus angka bulat. Coba lagi.");
  }
  print("Umur kamu: $umur");

  // Angka desimal (double) aman pakai tryParse
  double tinggi = 0;
  while (true) {
    stdout.write("Masukkan tinggi (cm, bisa desimal, contoh 170.5): ");
    String? inputTinggi = stdin.readLineSync();
    if (inputTinggi != null) inputTinggi = inputTinggi.trim();
    double? t = double.tryParse(inputTinggi ?? "");
    if (t != null) {
      tinggi = t;
      break;
    }
    print("(!) Harus angka (double). Coba lagi.");
  }
  print("Tinggi kamu: $tinggi cm");

  // 3) Default value kalau input kosong
  print("\n=== 3) DEFAULT VALUE ===");
  stdout.write("Masukkan kota (boleh kosong, default 'Bandung'): ");
  String? kota = stdin.readLineSync();
  if (kota != null) kota = kota.trim();
  if (kota == null || kota.isEmpty) {
    kota = "Bandung";
  }
  print("Kota: $kota");

  // 4) Pilihan ya/tidak (y/n)
  print("\n=== 4) YA / TIDAK ===");
  bool setuju = false;
  while (true) {
    stdout.write("Apakah kamu setuju? (y/n): ");
    String? yn = stdin.readLineSync();
    yn = yn?.trim().toLowerCase();
    if (yn == 'y') {
      setuju = true;
      break;
    } else if (yn == 'n') {
      setuju = false;
      break;
    } else {
      print("(!) Jawab 'y' atau 'n'.");
    }
  }
  print("Pilihanmu: ${setuju ? 'YA' : 'TIDAK'}");

  // 5) Menu sederhana (loop sampai pilih keluar)
  print("\n=== 5) MENU SEDERHANA ===");
  String profilNama = nama?.trim().isEmpty == false ? nama!.trim() : "Guest";
  int profilUmur = umur;

  while (true) {
    print("\nMenu:");
    print("1. Lihat profil");
    print("2. Ubah nama");
    print("3. Ubah umur");
    print("4. Keluar menu");
    stdout.write("Pilih (1/2/3/4): ");
    String? pilih = stdin.readLineSync();

    if (pilih == '1') {
      print(
        "-> Profil: Nama: $profilNama, Umur: $profilUmur, Kota: $kota, Tinggi: $tinggi cm",
      );
    } else if (pilih == '2') {
      stdout.write("Masukkan nama baru: ");
      String? nb = stdin.readLineSync();
      nb = nb?.trim();
      if (nb != null && nb.isNotEmpty) {
        profilNama = nb;
        print("-> Nama diubah menjadi: $profilNama");
      } else {
        print("-> Nama tidak diubah (kosong).");
      }
    } else if (pilih == '3') {
      while (true) {
        stdout.write("Masukkan umur baru (int): ");
        String? ub = stdin.readLineSync();
        int? uBaru = int.tryParse(ub ?? "");
        if (uBaru != null) {
          profilUmur = uBaru;
          print("-> Umur diubah menjadi: $profilUmur");
          break;
        }
        print("(!) Harus angka bulat.");
      }
    } else if (pilih == '4') {
      print("-> Keluar menu.");
      break;
    } else {
      print("(!) Pilihan tidak valid.");
    }
  }

  // 6) Input banyak baris jadi list (ENTER kosong untuk selesai)
  print("\n=== 6) DAFTAR HOBI (ENTER kosong untuk selesai) ===");
  List<String> hobiList = [];
  while (true) {
    stdout.write("- Hobi: ");
    String? h = stdin.readLineSync();
    h = h?.trim();
    if (h == null || h.isEmpty) break; // ENTER kosong → selesai
    hobiList.add(h);
  }
  print("Hobi kamu (${hobiList.length}): $hobiList");

  // 7) Input dipisah koma (split)
  print("\n=== 7) INPUT DENGAN KOMA ===");
  stdout.write(
    "Masukkan buah favorit (pisah dengan koma, contoh: apel, jeruk, pisang): ",
  );
  String? barisBuah = stdin.readLineSync();
  barisBuah = barisBuah?.trim();
  List<String> buah = [];
  if (barisBuah != null && barisBuah.isNotEmpty) {
    for (String item in barisBuah.split(',')) {
      String bersih = item.trim();
      if (bersih.isNotEmpty) {
        buah.add(bersih);
      }
    }
  }
  print("Buah favorit: $buah");

  // 8) Kalkulator sederhana (penjumlahan)
  print("\n=== 8) KALKULATOR SEDERHANA (A + B) ===");
  double a = 0, b = 0;
  while (true) {
    stdout.write("Masukkan A (double): ");
    String? sa = stdin.readLineSync();
    double? pa = double.tryParse(sa ?? "");
    if (pa != null) {
      a = pa;
      break;
    }
    print("(!) Harus angka.");
  }
  while (true) {
    stdout.write("Masukkan B (double): ");
    String? sb = stdin.readLineSync();
    double? pb = double.tryParse(sb ?? "");
    if (pb != null) {
      b = pb;
      break;
    }
    print("(!) Harus angka.");
  }
  print("Hasil: $a + $b = ${a + b}");

  // 9) Keliling & luas persegi panjang (contoh hitung dari input)
  print("\n=== 9) KELILING & LUAS PERSEGI PANJANG ===");
  double p = 0, l = 0;
  while (true) {
    stdout.write("Panjang: ");
    String? sp = stdin.readLineSync();
    double? pp = double.tryParse(sp ?? "");
    if (pp != null) {
      p = pp;
      break;
    }
    print("(!) Harus angka.");
  }
  while (true) {
    stdout.write("Lebar: ");
    String? sl = stdin.readLineSync();
    double? pl = double.tryParse(sl ?? "");
    if (pl != null) {
      l = pl;
      break;
    }
    print("(!) Harus angka.");
  }
  double keliling = 2 * (p + l);
  double luas = p * l;
  print("Keliling: $keliling");
  print("Luas    : $luas");

  // 10) Perbedaan print vs stdout.write (tanpa baris baru)
  print("\n=== 10) print vs stdout.write ===");
  stdout.write("Ini stdout.write (tidak auto newline). ");
  stdout.write("Ketik sesuatu: ");
  String? sesuatu = stdin.readLineSync();
  print("Kamu mengetik: $sesuatu"); // print → auto newline

  // 11) Validasi pola sederhana (email harus ada '@')
  print("\n=== 11) VALIDASI SEDERHANA (EMAIL) ===");
  String email = "";
  while (true) {
    stdout.write("Masukkan email: ");
    String? e = stdin.readLineSync();
    e = e?.trim();
    if (e != null && e.contains('@')) {
      email = e;
      break;
    }
    print("(!) Email minimal harus mengandung '@'.");
  }
  print("Email OK: $email");

  print("\n=== Selesai. Makasih! ===");
}
