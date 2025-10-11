abstract class MetodePembayaran {
  void bayar(double total);
}

class KartuDebit extends MetodePembayaran {
  @override
  void bayar(double total) {
    print('Bayar pakai Kartu Debit dengan total harga: $total');
  }
}

class DompetDigital extends MetodePembayaran {
  @override
  void bayar(double total) {
    print('Bayar pakai Dompet Digital dengan total harga: $total');
  }
}

void prosesPesanan(MetodePembayaran metode, double totalBelanja) {
  metode.bayar(totalBelanja);
}

void main() {
  // no 132
  KartuDebit kartuDebit = KartuDebit();
  DompetDigital dompetDigital = DompetDigital();

  prosesPesanan(kartuDebit, 100000);
  prosesPesanan(dompetDigital, 550000);
}
