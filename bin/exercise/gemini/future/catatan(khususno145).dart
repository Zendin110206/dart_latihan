// Langkah 1: Fungsi untuk login, mengembalikan Future berisi userId
Future<String> login(String user, String pass) {
  return Future.delayed(Duration(seconds: 1), () {
    print("Langkah 1 Selesai: Login berhasil.");
    return "user-123"; // Mengembalikan userId
  });
}

// Langkah 2: Fungsi untuk mengambil profil, butuh userId
Future<String> ambilProfil(String userId) {
  return Future.delayed(Duration(seconds: 1), () {
    print("Langkah 2 Selesai: Data profil didapatkan.");
    return "Budi Santoso"; // Mengembalikan nama pengguna
  });
}

void main() {
  print("Memulai proses login...");

  login("budi", "12345")
      .then((userId) {
        // <-- .then() pertama, menerima hasil dari login()
        print("Mendapatkan userId: $userId. Sekarang mengambil profil...");

        // Di dalam .then() pertama, kita memanggil fungsi async KEDUA.
        // DAN KITA MENGEMBALIKAN FUTURE-NYA!
        return ambilProfil(userId);
      })
      .then((nama) {
        // <-- .then() kedua, menerima hasil dari future yang di-return sebelumnya (ambilProfil)
        print("Selamat datang, $nama!");
      });

  print("Proses login sedang berjalan di latar belakang...");
}
