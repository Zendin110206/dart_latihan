void main() {
  // no 121
  DatabaseRepository databaseRepository = DatabaseRepository();
  databaseRepository.simpan('Makalah Penlitian');
}

abstract class DataRepository {
  void simpan(String data);
}

class DatabaseRepository extends DataRepository {
  @override
  void simpan(String data) {
    print('Menyimpan $data ke database.');
  }
}
