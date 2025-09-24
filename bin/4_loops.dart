
void main() {
  // Loops!
  print('Hello World 1');
  print('Hello World 2');
  print('Hello World 3');
  print('Hello World 4');
  print('Hello World 5');
  print('Hello World 6');
  print('Hello World 7');
  print('Hello World 8');
  print('Hello World 9');
  print('Hello World 10'); // kalau mau terus ya gak bakalan efisien

  print('---------');
  // for (init; condition; increment/decrement) {
  //   statement
  // }

  for (var i = 1; i <= 10; i++) {
    print("Hello world $i");
  }

  print('---------');

  for (var i = 0; i < 10; i++) {
    print("Hello world ${i + 1}");
  }

  print('---------');

  for (var i = 0; i < 10; i++) {
    String hi = 'Hello World';
    print(hi.substring(i, 10)); // angka terkahir excluded
    print(hi.substring(5));
  }

  print('---------');
  var tesAja = 'Halo';
  print(tesAja.substring(2));

  print('---------');

  // for in loop akan dijelaskan kalau udah paham materi lainnya, karena ini sulit aak tricky
  String value = 'Hello';
  for (var i = 0; i < value.length; i++) {
    print(value[i]);
  }

  print('---------');

  // while (condition) {

  // }

  int i = 0;
  while (i < value.length) {
    print(value[i]);
    i++;
  }

  print(
    i,
  ); //bisa ke print karena kita udah bikin inisislaisasinya di luar for ( paham kan scope?)
  print('---------');

  // Do While loop

  i = 1;
  do {
    print(
      "Ini pasti dijalankan pertama kali, dan selalu, baru setelah ini di cek kondisinya, kalau valid ini akan di print hingga $i kali ",
    );
  } while (i < 0);

  print('---------');
  // break and continue

  String kalimat = 'babi ngepet';
  for (var i = 0; i < kalimat.length; i++) {
    print(kalimat[i]);
    print(kalimat.substring(0, i));
  }

  String kalimat2 = 'babi coy';
  for (var i = 0; i < kalimat2.length; i++) {
    if (i == 1 || i == 2 || i == 3) {
      continue;
    }
    if (i == 7) {
      break;
    }
    print(kalimat2[i]);
  }
}
