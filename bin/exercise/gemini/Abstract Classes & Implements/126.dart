void main() {
  // no 126
}

abstract class MetodePembayaran {
  void prosesPembayaran(double jumlah);
}

class KartuKredit extends MetodePembayaran {
  @override
  void prosesPembayaran(double jumlah) {
    print('Melakukan pembayaran dengan kartu kredit: $jumlah');
  }
}
