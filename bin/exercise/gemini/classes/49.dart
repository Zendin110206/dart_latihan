void main() {
  // no 49
  final mahasiswa = Mahasiswa('Andi', '12345');
  final mahasiswa2 = Mahasiswa('Bunga', '67890');

  print('--- Info Mahasiswa 1 ---');
  mahasiswa.displayInfo();
  print('--- Info Mahasiswa 2 ---');
  mahasiswa2.displayInfo();
}

class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa(this.nama, this.nim);

  void displayInfo() {
    print('Nama: $nama');
    print('NIM: $nim');
  } // penasaran aja  kenapa ya kok bisa fungsi ini jalan tanpa ada parameter yang berada di dalam kurung? kan biasanya perlu kek ada parameter dan argumen gitu gak sih?
}
