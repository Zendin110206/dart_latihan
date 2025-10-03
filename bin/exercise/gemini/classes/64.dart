void main() {
  // no 64
  Database.getStatus();
  Database.connect('mysql://user:pass@host:3306/db');
  Database.getStatus();
  Database.disconnect();
  Database.getStatus();
}

class Database {
  static String? _connectionString;

  static void connect(String url) {
    _connectionString = url;
    print('Connected to $url');
  }

  static void disconnect() {
    _connectionString = null;
    print('Disconnected');
  }

  static void getStatus() {
    if (_connectionString == null) {
      print('No active connection');
    } else {
      print('Current status: Connected to $_connectionString');
    }
  }
}
