String namaGlobal = "Ini global"; // not rekomen

void main() {
  // ignore: unused_local_variable
  String namaLokal = 'Ini lokal';

  var name = printName();
  print(name);

  var angka2 = angka();
  print(angka2);
  print(angka());

  var result = doNothing();
  print(result);

  print('-------------');
  String namaku = 'Zaenal Abidin';
  printName2(namaku);

  print(namaku); // dia bukan Muhammad Zaenal Abidin Abdurrahman

  print('-------------');

  positionalArgument('hai', 12, 'babi');

  notPositionalArgument(age: 120, name: 'babi', greeting: 'babi');

  notPositionalArgument2(name: 'babi', greeting: 'babi');

  namedAndPositional(12, true, name: 'zaenal', greeting: "hai");

  var aku = printStuff();
  print(aku);
  print(aku.$2);
  print(aku.$1);

  var (umur, namaSaya) = printStuff();
  print((umur, namaSaya));

  final stuff = printStuff2();
  print(stuff.namaku);
  print(stuff.umur); // bedanya dengan aku
}

String? printName() {
  print('hello');
  return null;
  // print('Hello'); dead code karena return menandakan selesai
}

void sembarang() {
  return; // cara return di void meskipun seharusnya enggak usah ada return
}

int angka() {
  print(5);
  return 5;
}

Null doNothing() {
  print("Aku cuma jalan, gak balikin apa-apa");
}

// -------------- //

void printName2(String namaku) {
  // argumen
  print('Hello $namaku itu adalah nama saya');
  print(namaGlobal);
  print(namaku);

  namaku = 'Muhammad Zaenal Abidin Abdurrahman';
  print(namaku);
  // print(namaLokal); gak bisa
}

void positionalArgument(String name, int age, String greeting) {
  print(name);
}

// named parameters
void notPositionalArgument({
  required String name,
  required int age,
  required String greeting,
}) {
  // named argument
  print(name);
}

void notPositionalArgument2({
  required String name,
  int? age,
  required String greeting,
}) {
  // named argument
  print(name);
  print(age);
}

void namedAndPositional(
  int age,
  bool isAdult, {
  required String name,
  required String greeting,
}) {
  print(age);
  print(isAdult);
  print('namaku : $name');
  print("salam : $greeting");
}

(int, String) printStuff() {
  return (12, "zaenal");
}

({int umur, String namaku}) printStuff2() {
  return (umur: 20, namaku: 'zaenal abidin');
}
