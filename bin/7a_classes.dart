void main() {
  print(
    Cookie(),
  ); // instance of cookie (basically saying we have an object cookie created
  Cookie().baking();
  print(Cookie().isCooling());
  print('${Cookie().size} cm');
  var isCookieCooling = Cookie().isCooling();
  print(isCookieCooling);

  print('--------------');
  //cara kedua

  Cookie cookie = Cookie(); // or var cookie = Cookie();
  cookie.baking();
  print(cookie.isCooling());
  print('${cookie.size} cm');
  var isCookieCooling2 = cookie.isCooling();
  print(isCookieCooling2);

  print('--------------');
  cookie.shape = 'Rectangle';
  print(cookie.shape);

  // tapi gimana kalau gak kek gitu gimana kalau ke gini :
  print(Cookie().shape);
  Cookie().shape = 'Kotak';
  print(Cookie().shape);

  print('--------------');
  print('--------------');

  final cookie2 = Cookie2('Lingkaran', 20, null);
  print(cookie2);
  print(cookie2.size);

  print('--------------');
  print('--------------');
  final cookie3 = Cookie3('Hello', 100);
  print(cookie3.shape);
  print(cookie3.size);

  print('--------------');
  print('--------------');
  final cookie4 = Cookie4('hai', 100);
  print(cookie4.shape);
  print(cookie4.size);

  print('--------------');
  print('--------------');
  final cookie5 = Cookie5(shape: 'kotak', size: 20);
  print(cookie5.shape);
  print(cookie5.size);
  cookie5.baking();

  print('--------------');
  print('--------------');
  final cookie6 = Cookie6(shape: 'kotak', size: 20);
  print(cookie6.shape);
  print(cookie6.size);
  cookie6.baking();
  print(cookie6._height); // private variables
  print(cookie6.height); // using getter
  cookie6._height =
      100; // disini jangan bingung yaa, ini itu kamu ngubah langsung nilai private nya pake private, bukan melalu getter, kalau kamu ubah ke getter pasti bilangnya enggak ada setter
  print(cookie6.height);

  cookie6.setHeight = 15;
  print(cookie6.height);

  print('--------------');
  print('--------------');
  var c = Cookie7();
  print(c.internalTempC); // 25.0
  c.internalTempC = 40; // valid
  print(c.internalTempC); // 40.0
  print(c._internalTempC);
  // c.internalTempC = 500; // ❌ error

  print('--------------');
  print('--------------');
  var c1 = Cookie8('Bulat');
  var c2 = Cookie8('Kotak');

  c1.info(); // Cookie bentuk Bulat dari Pabrik Kue Zaenal
  c2.info(); // Cookie bentuk Kotak dari Pabrik Kue Zaenal

  // Ubah nama pabrik
  Cookie8.bakeryName = 'Pabrik Kue Bandung';

  c1.info(); // Cookie bentuk Bulat dari Pabrik Kue Bandung
  c2.info(); // Cookie bentuk Kotak dari Pabrik Kue Bandung

  // ignore: unused_local_variable
  var cc1 = Cookie9('Bulat');
  // ignore: unused_local_variable
  var cc2 = Cookie9('Kotak');
  // ignore: unused_local_variable
  var cc3 = Cookie9('Segitiga');

  print('Total cookie dibuat: ${Cookie9.totalCookies}');
  // Output: Total cookie dibuat: 3

  print('--------------');
  print('--------------');
  final constants = Constants();
  print(constants.greeting);
  print(constants.bye);
  print(Constants.greeting2); // static variabel
  print(Constants.giveMeSomeValue()); // static variabel
}

// Name convention : PascalCase
class Cookie {
  // variables
  String shape = 'Circle';
  double size = 15.2; //cm

  // functions or more precise it called methods
  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }
}

class Cookie2 {
  String shape;
  double size;
  int? kosong;
  // functions or more precise it called methods
  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }

  Cookie2(this.shape, this.size, this.kosong) {
    print(this);
    print('Cookie constructor called');
    baking();
  }
}

//pelajari dan pahami pelan pelan bagian sini
class Cookie3 {
  String shape = 'cookie';
  double size;
  Cookie3(String shape, this.size) {
    // ubah this.shape ke String shape dan lihat perbedaanya
    print(this.shape);
    print(shape);
    this.shape = shape;
    this.size = size;
  }
}

// pemahaman pake ini : (nama variabel nya aku bedain dan coba cocokin dengan yang atas)

class Cookie4 {
  String shape = 'cookie';
  double size;

  Cookie4(String newShape, this.size) {
    print(this.shape);
    this.shape = newShape;
  }
}

class Cookie5 {
  // bagaimana jika kita ingin property hanya bisa diubah di method? tidak bisa diubah di luar? safer way is like these
  final String shape;
  final double? size;

  Cookie5({required this.shape, this.size});

  //method
  void baking() {
    print('Baking has started');
    print('Your coookie of $shape and size $size cm is baking ');
  }

  bool isCooling() {
    return false;
  }
} // immutable class

class Cookie6 {
  // Properties
  final String shape;
  final double size;

  Cookie6({required this.shape, required this.size}) {
    baking();
  }

  // Private Variables
  int _height = 6;
  int _width = 5;

  // Getters
  int get height => _height;
  int get width => _width;

  // Setters
  set setHeight(int h) {
    _height = h;
  }

  //method
  void baking() {
    print('Baking has started');
    print('Your coookie of $shape and size $size cm is baking ');
  } // Catatan penting: memanggil baking() di constructor artinya setiap kali kamu bikin objek, dia langsung “memulai proses baking” (atau minimal nge-print). Ini boleh, tapi hati-hati:
  // Constructor idealnya hanya untuk inisialisasi data, bukan melakukan kerja berat/IO/async.
  // Untuk efek samping (aksi), seringnya lebih rapi dipanggil manual setelah objek dibuat.

  bool isCooling() {
    return false;
  }

  int calculateSize() {
    return _height * _width;
  }

  void modifyHeight(int h) {
    _height = h;
  }

  void modifyWidth(int w) {
    _width =
        w; // kalau kamu tulis width = w; dia error karena 2. Getter (pintu keluar, buat baca) Getter = cara aman buat membaca nilai dari variabel privat. Kalau ganti pake Setter (pintu masuk, buat mengubah) Setter = cara aman buat mengubah nilai privat, biasanya dengan validasi.
  }
}

class Cookie7 {
  // private variable
  double _internalTempC = 25.0;

  // getter → bisa dibaca dari luar (maksudnya beda file)
  double get internalTempC => _internalTempC;

  // setter → bisa diubah dari luar, tapi lewat validasi
  set internalTempC(double value) {
    if (value < -20 || value > 300) {
      throw ArgumentError('Suhu tidak masuk akal: $value °C');
    }
    _internalTempC = value;
  }
}

// static function
// static variables
class Cookie8 {
  static String bakeryName = 'Pabrik Kue Zaenal'; // milik class
  String shape;

  Cookie8(this.shape);

  void info() {
    print('Cookie bentuk $shape dari $bakeryName');
  }
}

class Cookie9 {
  static int totalCookies = 0; // milik class
  String shape;

  Cookie9(this.shape) {
    totalCookies++; // setiap buat objek, counter nambah
  }
}

class Constants {
  String greeting = 'Hello, how are you';
  String bye = 'Bye!';
  static String greeting2 = 'Hi ini static';
  static int tes = 10;

  Constants() {
    print('constructor dipanggil');
  }

  static int giveMeSomeValue() {
    return 10;
  }
}

class Point {
  final int x;
  final int y;
  final int sum;

  // isi x, y, sum di initializer list
  Point(this.x, this.y) : sum = x + y;

  // body constructor (kalau ada) akan jalan SETELAH initializer list
}

void main2() {
  var p = Point(2, 3);
  print(p.sum); // 5
}

class PositiveCounter {
  final int value;

  PositiveCounter(int v) : assert(v >= 0, 'harus >= 0'), value = v;
}

void main3() {
  var c = PositiveCounter(5); // ok
  print(c.value);

  // var d = PositiveCounter(-1); // ❌ akan error assertion
}
