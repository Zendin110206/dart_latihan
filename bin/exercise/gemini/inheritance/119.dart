import 'dart:io';

void main() {
  // no 119

  List<AlatTulis> alatTulis = [];

  for (var i = 0; i < 3; i++) {
    stdout.write(
      'Masukkan mau menulis menulis menggunakan apa (Pensil/Pena): ',
    );
    String pilihan = stdin.readLineSync()!;
    if (pilihan.trim().toLowerCase() == "pensil") {
      alatTulis.add(Pensil());
    } else if (pilihan.trim().toLowerCase() == "pena") {
      alatTulis.add(Pena());
    }
  }

  print(alatTulis); // memastikan saja
  for (var element in alatTulis) {
    element.tulis();
  }
}

class AlatTulis {
  void tulis() {
    print("Menulis sesuatu di kertas...");
  }
}

class Pensil extends AlatTulis {
  @override
  void tulis() {
    super.tulis();
    print('Menggunakan Pensil');
  }
}

class Pena extends AlatTulis {
  @override
  void tulis() {
    super.tulis();
    print('Menggunakan Pena');
  }
}
