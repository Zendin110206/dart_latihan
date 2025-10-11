void main() {
  // no 131
  final listAlatMusik = [Piano(), Gitar(), Biola()];

  for (var element in listAlatMusik) {
    element.mainkan();
  }
}

abstract class AlatMusik {
  void mainkan();
}

class Piano extends AlatMusik {
  @override
  void mainkan() {
    print('Ting ting...');
  }
}

class Gitar extends AlatMusik {
  @override
  void mainkan() {
    print('Jrenggg...');
  }
}

class Biola extends AlatMusik {
  @override
  void mainkan() {
    print('Nging...');
  }
}
