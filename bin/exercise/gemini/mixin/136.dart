void main() {
  // no 136

  PemainSeruling pemainSeruling = PemainSeruling();
  PemainGitar pemainGitar = PemainGitar();

  pemainSeruling.tiup();
  pemainGitar.petik();
}

mixin Peniup {
  void tiup() {
    print('Fuuuu.....');
  }
}

mixin Pemetik {
  void petik() {
    print('Ting!');
  }
}

class PemainSeruling with Peniup {}

class PemainGitar with Pemetik {}
