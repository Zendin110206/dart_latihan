void main() {
  // no 110
  AkunTabungan akunTabungan = AkunTabungan(saldo: 1000);
  print('Saldo awal: ${akunTabungan.saldo}');
  print('Saldo setelah ditambah bunga: ${akunTabungan.tambahBunga()}');
}

class AkunBank {
  double saldo;
  AkunBank({required this.saldo});
}

class AkunTabungan extends AkunBank {
  AkunTabungan({required super.saldo});
  double tambahBunga() {
    return saldo = saldo * 102 / 100;
  }
}
