void main() {
  // no 137
  Ksatria ksatria = Ksatria();
  ksatria.bertahan();
  ksatria.serang();
}

mixin BisaMenyerang {
  void serang() {
    print('Sedang menyerang');
  }
}

mixin BisaBertahan {
  void bertahan() {
    print('Menahan serangan musuh');
  }
}

class Ksatria with BisaMenyerang, BisaBertahan {}
