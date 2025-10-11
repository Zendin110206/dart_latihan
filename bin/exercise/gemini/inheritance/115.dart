class Dokumen {
  void simpan() {
    print('Menyimpan dokumen ke disk...');
  }
}

class DokumenTeks extends Dokumen {
  @override
  void simpan() {
    print('Memeriksa ejaan sebelum menyimpan...');
    super.simpan();
  }
}

void main() {
  // no 115
  DokumenTeks dokumenTeks = DokumenTeks();
  dokumenTeks.simpan();
}
