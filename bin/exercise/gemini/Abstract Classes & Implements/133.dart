void main() {
  // no 133

  final pahlawanku = [
    Superman(),
    Aquaman(),
  ]; // kenapa disini list nya tipenya object, bukan class kek sebelum sebelumnya? apakah karena kekduanya memiliki implement yang mengarah berbeda hal? apakah sebaiknya object atau dynamic?

  for (var pahlawan in pahlawanku) {
    if (pahlawan is Superman) {
      pahlawan.terbang();
    }

    if (pahlawan is Aquaman) {
      pahlawan.berenang();
    }
  }
}

abstract class BisaTerbang {
  void terbang();
} // kenapa kok kamu mention interface disitu?

abstract class BisaBerenang {
  void berenang();
}

class Superman implements BisaTerbang {
  @override
  void terbang() {
    print('Superman Terbang');
  }
}

class Aquaman implements BisaBerenang {
  @override
  void berenang() {
    print('Aquaman berenang');
  }
}
