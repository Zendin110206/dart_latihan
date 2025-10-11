void main() {
  // no 138
  Elang elang = Elang();
  elang.bertelur();
  elang.terbang();
}

class Burung {
  void bertelur() {
    print('Burung hewan bertelur');
  }
}

mixin BisaTerbang {
  void terbang() {
    print('Jenis ini bisa terbang');
  }
}

class Elang extends Burung with BisaTerbang {}
