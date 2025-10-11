void main() {
  // no 125
}

class Pekerja {
  String nama = "Pekerja Umum";
  void bekerja() {
    print("Sedang bekerja...");
  }
}

class Manager extends Pekerja {}

class Kontraktor implements Pekerja {
  // langsung error kalau cuman gini doank tanpa code dibawah :
  @override
  String nama = 'Harus diisi lagi';

  @override
  void bekerja() {
    print('Kontrator mengurusi bagian ....');
  }
}
