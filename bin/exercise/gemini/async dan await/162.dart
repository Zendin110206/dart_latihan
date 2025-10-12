class ApiService {
  final _database = {'user1': 'Andi', 'user2': 'Budi'};

  Map<String, String> get database => _database;

  Future<String> fetchUserData(String userId) async {
    await Future.delayed(Duration(seconds: 2));
    if (database.containsKey(userId)) {
      return database[userId]!; 
    } else {
      throw Exception('User not found');
    }
  }
}

void main() async {
  // no 162
  try {
    ApiService apiService = ApiService();
    final data = await apiService.fetchUserData('user1');
    print(data);
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }

  try {
    ApiService apiService = ApiService();
    final data = await apiService.fetchUserData('tidak ada');
    print(data);
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }
}


// ini lebih best practise, karena gak pake tanda pentung !

// Future<String> fetchUserData(String userId) async {
//   await Future.delayed(Duration(seconds: 2));

//   // 1. Ambil nilainya ke dalam variabel lokal. Tipe datanya adalah String? (nullable)
//   final user = database[userId];

//   // 2. Cek apakah variabel itu tidak null.
//   if (user != null) {
//     // Di dalam blok ini, Dart PINTAR. Ia tahu 'user' tidak mungkin null.
//     // Tipe 'user' secara otomatis "dipromosikan" dari String? menjadi String.
//     return user; // Tidak perlu '!' lagi!
//   } else {
//     // Jika user adalah null, berarti kuncinya tidak ditemukan.
//     throw Exception('User not found');
//   }
// }