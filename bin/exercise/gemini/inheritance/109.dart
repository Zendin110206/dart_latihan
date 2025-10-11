void main() {
  // no 109
  Manajer manajer = Manajer();
  manajer.bekerja();
}

class Karyawan {
  void bekerja() {
    print('Sedang menyelesaikan tugas-tugas umum');
  }
}

class Manajer extends Karyawan {
  @override
  void bekerja() {
    super.bekerja();
    print('Dan juga sedang menyusun laporan untuk tim.');
  }
}
