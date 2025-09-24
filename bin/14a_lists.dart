void main() {
  // List
  // [10, 20, 30]

  List list = [10, 20, 30];
  print(list);

  print(list[0]);
  print(list[1]);
  print(list[2]);

  List list2 = [
    10,
    20,
    30,
    'halo',
    true,
  ]; // coba hover mouse ke list2, tipenya dia dynamic kan, makanya enggak muncul error ketika akses index lebih, dan seharusnya dihindari
  print(list2);
  // print(list2[5]); nih error tau kalau di runtime

  List<int> nilaiku = [10, 20, 30];
  print(nilaiku);
  // print(nilaiku[10]); loh ternyata sama aja, ternyata range of index baru tau saat di runtime

  final student = Student<String>('10.55');
  print(student.name);
  print(Student('hai').name);

  print('-----------------');
  print('-----------------');

  List<Student> nama = [
    Student('Zaenal'),
    Student('Zaenal2'),
    Student('Zaenal3'),
  ];

  print(nama[0]);
  print(nama[0].name);

  NgetesAja().halo();

  print('-----------------');
  print('-----------------');

  List students = [
    Student('Zaenal'),
    Student('Zaenal2'),
    Student('Zaenal3'),
    'Strings',
    20,
  ];

  print(students);
  print(students[0].name);

  final student2 = students[4];
  if (student2 is Student) {
    print(student2.name);
  } else {
    print(student2);
  }
}

class Student<T> {
  final T name;

  Student(this.name);

  void setName(T name) {
    print('new Name: $name');
  }
}

class NgetesAja {
  void halo() {
    print('haloooo');
  }
}
