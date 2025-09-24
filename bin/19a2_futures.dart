import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  // 1) Siapkan URL dalam bentuk Uri (http.get BUTUH Uri, bukan String):
  final url = Uri.parse('https://jsonplaceholder.typicode.com/users');

  // Pakai Uri.https: authority = host saja, path = tanpa slash awal (disarankan)
  final url2 = Uri.https(
    'jsonplaceholder.typicode.com', // TANPA "https://"
    'users/1', // path; sebaiknya tanpa leading slash
  ); // sama ajaaa cara kedua dan kalau pengen id 1

  // 2) Panggil GET dan TUNGGU hasilnya (await):
  final response = await http.get(url); // response adalah http.Response
  final response2 = await http.get(url2);

  // 3) Cek status sederhana:
  print('Status: ${response.statusCode}'); // 200 artinya OK
  print('Body (teks mentah):');
  print(response.body); // ini masih string JSON

  print('---------------------');
  print('---------------------');
  print(response2.body);

  print('---------------------');
  print('---------------------');
  // Nah output mereka adalah literal string, jadi kalau misalnya kamu negetik ini, maka dapetnya cuman {
  print(response2.body[0]);
  // gimana cara ubah ke map kek atau apa gitu biar bisa akses? kan bentuk output dia seperti ini
  // print(response2.body);
  //   {
  //   "id": 1,
  //   "name": "Leanne Graham",
  //   "username": "Bret",
  //   "email": "Sincere@april.biz",
  //   "address": {
  //     "street": "Kulas Light",
  //     "suite": "Apt. 556",
  //     "city": "Gwenborough",
  //     "zipcode": "92998-3874",
  //     "geo": {
  //       "lat": "-37.3159",
  //       "lng": "81.1496"
  //     }
  //   },
  //   "phone": "1-770-736-8031 x56442",
  //   "website": "hildegard.org",
  //   "company": {
  //     "name": "Romaguera-Crona",
  //     "catchPhrase": "Multi-layered client-server neural-net",
  //     "bs": "harness real-time e-markets"
  //   }
  // }

  print('---------------------');
  print('---------------------');
  final Map<String, dynamic> user = jsonDecode(response2.body);
  print('ID: ${user['id']}');
  print('Nama: ${user['name']}');
  print('Email: ${user['email']}');
  print('Lat: ${user['address']['geo']['lat']}');
}

// Future<String> giveAResultAfter2Sec() async {
//   return Future.delayed(Duration(seconds: 2), () {
//     return 'Hey!!!!';
//   });
// }
