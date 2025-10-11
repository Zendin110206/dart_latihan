void main() {
  // no 120
  Musuh musuh = buatMusuh(3);
  Musuh musuh2 = buatMusuh(10);

  musuh.serang();
  musuh2.serang();
}

class Musuh {
  void serang() {
    print('Base kamu diseranggggggg!!!!!');
  }
}

class Goblin extends Musuh {
  @override
  void serang() {
    super.serang();
    print('Base kamu diserang Goblin');
  }
}

class Naga extends Musuh {
  @override
  void serang() {
    super.serang();
    print('Base kamu diserang Naga');
  }
}

Musuh buatMusuh(int level) {
  if (level < 5) {
    return Goblin();
  } else {
    return Naga();
  }
}
