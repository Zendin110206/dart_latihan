// Kontrak ini mengatakan: "Siapa pun yang meng-implementasi saya,
// WAJIB memiliki properti 'nama' yang bisa dibaca (getter)
// dan ditulis (setter)."
abstract class PunyaNama {
  String? nama;
}

// Manusia adalah class yang mematuhi kontrak PunyaNama.
class Manusia implements PunyaNama {
  // Dengan mendeklarasikan 'String nama' di sini, kita secara otomatis
  // sudah memenuhi kontrak getter dan setter dari PunyaNama.
  @override
  String? nama;

  Manusia(this.nama);
}

void main() {
  var budi = Manusia("Budi");
  print(budi.nama); // 'nama' ada karena memenuhi kontrak.
}
