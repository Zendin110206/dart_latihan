void main() {
  // no 128
}

abstract class BisaMakan {
  void bisaMakan();
}

abstract class BisaTidur {
  void bisaTidur();
}

class Manusia implements BisaTidur, BisaMakan {
  @override
  void bisaMakan() {
    print('Makan');
  }

  @override
  void bisaTidur() {
    print('tidur');
  }
}


