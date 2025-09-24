void main() {
  final s = StudentContohToString('Zaenal');
  print(s); // 👉 Output: Instance of 'Student'
  print(s.toString()); // 👉 Sama persis: Instance of 'Student'

  var studentZaenal = Student('zaenal');
  List<Student> students = [
    studentZaenal,
    Student('abidin'),
    Student('Abdurrahman'),
    Student('soif'),
  ];

  print(students);
  print(
    students.toString(),
  ); // pahami toString disini  (coba hapus dulu bagian @override class Student)

  students[3] = Student('New Kid'); // reassign
  print(students[3].name);
  print(students);

  print('-------------');
  print('-------------');

  students.add(Student('muhammad'));
  print(students); // nambah di akhir

  print('-------------');
  print('-------------');
  students.insert(0, Student('nama pertama ditambahkan'));
  print(students);

  print('-------------');
  print('-------------');
  students.remove(
    Student('zaenal'),
  ); // ini gak bakal ngapus karena inget kan mengenai class? setiap kali nulis class, maka itu instance yang berdiri sendiri, objek sendiri, makanya harus disimpan di variabel
  print(students);
  students.remove(
    studentZaenal,
  ); // ini gak bakal ngapus karena inget kan mengenai class? setiap kali nulis class, maka itu instance yang berdiri sendiri, objek sendiri, makanya harus disimpan di variabel
  print(students);

  print('-------------');
  print('-------------');

  List<Student2> students2 = [
    Student2('Rivan', 10),
    Student2('abidin', 20),
    Student2('Abdurrahman', 30),
    Student2('soif', 40),
  ];

  print(students2);
  // want to filter with frade above 20
  // step by step ( cara pertama)
  // 1. A new list of students empty
  // 2. run a for loop
  // 3. checl if the grade of 1 student is greater than 20
  // 4. if true, add student to my new li

  List<Student2> filteredStudents = [];
  print(filteredStudents);

  for (var i = 0; i < students2.length; i++) {
    if (students2[i].marks >= 20) {
      filteredStudents.add(students2[i]);
    }
  }
  print(filteredStudents);

  print('-------------');
  print('-------------');
  // step 2, foreign loops
  filteredStudents = [];
  print(filteredStudents);
  for (final student in students2) {
    print(student);
    print(student.marks);
    if (student.marks >= 20) {
      filteredStudents.add(student);
    }
  }
  print(filteredStudents);

  print('-------------');
  print('-------------');
  // step3 : using bawaan dari students2

  students2.where((student) => student.marks >= 20);
  print(students2); // enggak kesimpan cara salah

  final filtered3 = students2
      .where((s) => s.marks >= 20)
      .toList(); // disini kenapa kok ada.tolist? karena awalnya dia itu iterable bukan list
  print(filtered3);

  for (final s in students2.where((s) => s.marks >= 20)) {
    print(s);
  }

  print(students2.reversed.toList());
  
}

class Student {
  final String name;

  Student(this.name);

  @override
  String toString() => 'Student: $name';
  // String toString() {
  //   return 'Student: $name';
  // }
}

class StudentContohToString {
  final String name;
  StudentContohToString(this.name);
}

class Student2 {
  final String name;
  final int marks;

  Student2(this.name, this.marks);
  @override
  String toString() => 'Student: $name, grade: $marks';
}
