void main() {
  // no 50
  final dompet = Dompet(50000);
  print('Saldo awal: ${dompet.saldo}');
  dompet.tambahUang(20000);
  print('Saldo setelah ditambah: ${dompet.saldo}');
  dompet.ambilUang(15000);
  print('Saldo setelah diambil: ${dompet.saldo}');
  print('Saldo akhir: ${dompet.saldo}');
}

class Dompet {
  double saldo = 0; // ini enggak berfungsi gak sih?
  Dompet(this.saldo);

  void tambahUang(double jumlah) {
    saldo += jumlah;
  }

  void ambilUang(double jumlah) {
    saldo -= jumlah;
  }
}
