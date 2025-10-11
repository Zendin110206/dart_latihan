void main() {
  // no 108
  Gitar gitar = Gitar();
  gitar.mainkan();
}

class AlatMusik {
  void mainkan() {
    print('Memainkan nada dasar...');
  }
}

class Gitar extends AlatMusik {
  @override
  void mainkan() {
    print('Jrengg...');
  }
}
