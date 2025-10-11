void main() {
  // no 130
}

abstract class Musisi {
  void mainkanNada();
}

class Pianis extends Musisi {
  @override
  void mainkanNada() {
    print('Ini pianis dan sedankan memainkan nada Do Re Mi');
  }
}

class Gitaris extends Musisi {
  @override
  void mainkanNada() {
    print('Ini Gitaris dan sedankan memainkan nada Do Re Mi');
  }
}


// Aku ada pertanyaan, apakah bisa kalau cuman kontrak variabel doank? atau hal itu enggak umum? cukup pake required required aja? atau gimana?
