Future<String> ambilData() {
  return Future.delayed(Duration(seconds: 2), () {
    // Anggap koneksi internet tiba-tiba putus.
    throw Exception("Gagal terhubung ke server!");
    // atau
    // return Future.error("Gagal terhubung!");
  });
}

void main() async {
  try {
    // Coba jalankan kode async yang berpotensi error di sini
    String hasil = await ambilData();
    print(hasil);
  } catch (e) {
    // Jika 'await' menghasilkan error, eksekusi akan langsung lompat ke blok 'catch' ini.
    // 'e' berisi objek errornya.
    print("Terjadi kesalahan: $e");
  }
}
