void main() {
  // no 139
  DatabaseService databaseService = DatabaseService();
  databaseService.log('Ini adalah pesan untuk database service');

  ApiService apiService = ApiService();
  apiService.log('Ini adalah pesan untukk API service');
}

mixin Logger {
  void log(String pesan) {
    print('[LOG]: $pesan');
  }
}

class DatabaseService with Logger {}

class ApiService with Logger {}
