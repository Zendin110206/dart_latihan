void main() {
    // no 30
  print("Mengecek 'password123': ${validasiPassword('password123')}");
  print("Mengecek 'pass': ${validasiPassword('pass')}");
  print("Mengecek '12345678': ${validasiPassword('12345678')}");
  print("Mengecek 'passwordaja': ${validasiPassword('passwordaja')}");
}

String validasiPassword(String password) {
  // Aturan 1: panjang minimal 8
  if (password.length < 8) {
    return 'Password harus minimal 8 karakter';
  }

  bool adaHuruf = false;
  bool adaAngka = false;

  for (var i = 0; i < password.length; i++) {
    final code = password.codeUnitAt(i); // ambil kode ASCII/UTF-16

    // '0'..'9' = 48..57
    if (code >= 48 && code <= 57) {
      adaAngka = true;
    }
    // 'A'..'Z' = 65..90, 'a'..'z' = 97..122
    else if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122)) {
      adaHuruf = true;
    }

    if (adaHuruf && adaAngka) break; // sudah cukup kuat, hentikan loop
  }

  // Aturan 2 & 3: kembalikan error pertama yang belum terpenuhi
  if (!adaHuruf) return 'Password harus mengandung huruf';
  if (!adaAngka) return 'Password harus mengandung angka';

  return 'Password valid';
}

// aneh, apakah emmang begini? kalau  iyaa kamu seharusnya ngasih tau aku hal hal seperti .codeunitAt karena itu bukan kek pengetahuan umum sehingga aku bener bener kesulitan banget ngerjain ini