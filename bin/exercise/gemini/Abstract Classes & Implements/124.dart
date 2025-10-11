void main() {
  // no 124
}

abstract class BisaTerbang {
  void bisaTerbang();
}

abstract class BisaBerenang {
  void bisaBerenang();
}

class Superman implements BisaBerenang, BisaTerbang {
  @override
  void bisaBerenang() {
    print('Kemampuan superman yaitu bisa berenang');
  }

  @override
  void bisaTerbang() {
    print('Kemampuan kedua yaitu bisa terbang');
  }
}
