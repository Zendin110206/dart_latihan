void main() async {
  // Futures (Promises)

  final result = giveAResultAfter2Sec();
  print('haloooo');
  print(result);
  print(await result);

  final result2 = await giveAResultAfter2Sec();
  print(result2);

  print('Hey');
  print('Hello');
  print('Greetings!');

  print('-------------------');
  print('-------------------');
  giveAResultAfter2Sec().then((val) { 
    print(val);
  }); // lihat bedanya yaa dengan yang atas ( kalau cuman ini maka void main gak perlu ada async, pokok async ada jika await ada)
  // giveAResultAfter2Sec().then((value) => print(value)); sama aja

   print('Hey');
  print('Hello');
  print('Greetings!');
}

// 1) tanpa async:
Future<String> giveAResultAfter2Sec() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Hey!!!!!!';
  });
  // return Future.delayed(Duration(seconds: 2), () => 'Hey!!!!!!'); sama aja penulisannya
}

// 2) dengan async:
// Future<String> giveAResultAfter2Sec() async {
//   await Future.delayed(Duration(seconds: 2));
//   return 'Hey!!!!!!';
// }