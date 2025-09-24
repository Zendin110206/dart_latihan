String? kosongDiLuar;
void main() {
  // Variables
  // <datatype <variablename = value;

  double firstvalue = 302;
  double secondvalue = 102;

  print(firstvalue);
  print(secondvalue.isNegative);
  print(firstvalue * secondvalue);
  print(firstvalue + secondvalue);
  print(firstvalue - secondvalue);

  double price = 1130.2232323233233; // valid.
  print(price.ceilToDouble());
  print(price.roundToDouble());
  print(price.toStringAsFixed(2));

  String nama = 'zaenal abidin';
  print(nama);
  print(nama.length);

  bool isBenar = true;
  print(isBenar);

  // not recommended
  dynamic sembarangNilai = 20; // bisa ngambil value apa aja
  print(sembarangNilai);

  // Tambahan materi mengenai variabel bagian biasa
  int angka1 = 25;
  print(angka1);
  angka1 = angka1 + 100;
  print(angka1);
  angka1 += 1;
  print(angka1);

  angka1 = 100;
  print(angka1);

  String greeting = 'Hello, World';
  print(greeting);

  // ignore: prefer_interpolation_to_compose_strings
  greeting = greeting + 'Yoooo'; // not reccommended
  print(greeting);

  greeting = '$greeting eaaa'; // reccommended
  print(greeting);

  greeting = '${greeting.length}Halooo';
  print(greeting);

  greeting = '\$12';
  print(greeting);

  var firstName = "John";
  var lastName = "Doe";
  print("Full name is $firstName $lastName");

  greeting = ''' 
Hello 
nama ku zaenal
  aku manusia
  ''';

  print(greeting);

  // Multi Line Using Single Quotes
  String multiLineText = '''
This is Multi Line Text
with 3 single quote
I am also writing here.
''';

  // Multi Line Using Double Quotes
  String otherMultiLineText = """
This is Multi Line Text
with 3 double quote
I am also writing here.
""";

  // Printing Information
  print("Multiline text is $multiLineText");
  print("Other multiline text is $otherMultiLineText");

  print('hello \nworld');

  dynamic nilaiSembarang = "Hello";
  print(nilaiSembarang);
  print(greeting.runtimeType);
  nilaiSembarang = 10;
  print(nilaiSembarang); // pake dynamic bisa
  print(greeting.runtimeType);

  // ignore: unused_local_variable
  dynamic someValue = "1010123";
  // print(someValue + 3); bikin error

  int a = 10;
  print(a);
  a = 12;
  print(a);

  // Variables 2 :
  // var/final/const variableName = value;

  var valueSembarang1 = '10';
  final valueSembarang2 = '10';
  const valueSembarang3 = '10';

  print(valueSembarang1);
  print(valueSembarang2);
  print(valueSembarang3);

  print('-----------');

  valueSembarang1 = '10001';
  print(valueSembarang1);

  // akan menyebabkan error
  // valueSembarang2 = '10001';
  // valueSembarang3 = '10001';

  final contohFinal = DateTime.now();
  const contohConst = 10;

  final int tanggal =
      15; // optional, boleh boleh aja, tapi gak usah diimplementasikan, karena final var const sudah langsung tau

  print(contohFinal);
  print(contohConst);
  print(tanggal);

  // bedanya pokoknya, ya kek gini
  /*
| Pertanyaan                                      | `dynamic`            | `var` (dengan nilai awal)     | `var` (tanpa nilai)            | `final`                                   | `const`                                                   |
| ----------------------------------------------- | -------------------- | ----------------------------- | ------------------------------ | ----------------------------------------- | --------------------------------------------------------- |
| Ini “tipe” atau “aturan mutabilitas”?           | **Tipe**             | Infer **tipe**                | Jadi **`dynamic`**             | **Mutabilitas**                           | **Mutabilitas + compile-time**                            |
| Boleh gonta-ganti tipe nilai?                   | Ya (berisiko)        | Tidak (terkunci ke tipe awal) | Ya (karena dynamic)            | Tergantung tipe awal, tapi **sekali set** | Tergantung tipe awal, tapi **sekali set & harus konstan** |
| Nilai boleh dari runtime (jam, parsing, input)? | Boleh                | Boleh                         | Boleh                          | **Boleh**                                 | **Tidak** (harus konstan)                                 |
| Contoh kuat                                     | Data sangat variatif | Penulisan harian              | (hindari; sama dengan dynamic) | Cache hasil perhitungan runtime           | Angka/teks tetap, objek `const`                           |

Compile time vs runtime (intuitif) :
Compile time = “saat kamu menyiapkan resep sebelum masak.” Semua nilai harus sudah pasti tanpa melihat jam, input user, atau hasil perhitungan yang baru ada ketika program jalan.
Runtime = “saat memasak.” Nilai boleh datang dari jam sekarang, input user, atau parsing teks.

// pakai final (umum di Flutter)
final title = "Dashboard"; // String, gak bakal berubah

// pakai var (berubah-ubah)
var counter = 0; // int, bisa counter++

// pakai const (benar2 konstan)
const pi = 3.14159;

// tipe eksplisit (biar jelas di API publik)
String formatName(String name) {
  return name.toUpperCase();
}

*/

  // Nah mungkin kamu bertanya tanya, kenapa kok saya harus tau tipe data kek string, int, double? padahal dart udah pintar, dia bisa nentuin sendiri nama variabelnya?

  // Optional Variables
  // String/int/bool and null
  // String? suatuKalimat = null;

  // final kosong = null; // not recommended
  // int? some;

  String? bisaKosong;
  print(bisaKosong);

  bisaKosong = '354 Hello World';
  print(bisaKosong);
  print(bisaKosong.length);

  bisaKosong = null;
  print(bisaKosong?.length);

  bisaKosong = '354 Hello World';
  print(bisaKosong.length);

  bisaKosong = null;
  print(bisaKosong?.length);

  // Lihat variabel yang kutaruh di luar

  print('----------');
  print(kosongDiLuar);
  kosongDiLuar = 'hi';
  // print(kosongDiLuar.length); // nah kalau kek gini gak bisa padahal bisaKosong sebelumnya bisa
  print(
    kosongDiLuar!.length,
  ); // ada pengaruh di fungsi main pokoknya, jadi dia kek sebuah apa ta, kalau ditaruh didalem tuh jadi tau konteksnya gitu
  print(kosongDiLuar?.length);

  kosongDiLuar = null;
  print(
    kosongDiLuar?.length ?? 0,
  ); // kalau misalnya ini gak null, kasih dia sesuai dengan banyak huruf, kalau null kasih saja output 2

  kosongDiLuar = 'hiiii';
  print(
    kosongDiLuar?.length ?? 1,
  ); // kalau misalnya ini gak null, kasih dia sesuai dengan banyak huruf, kalau null kasih saja output 1
}


// https://dart-tutorial.com/introduction-and-basics/operators-in-dart/