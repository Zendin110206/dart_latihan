void main() {
  //map

  /*
  {
  'key' : 'value',
  'key2' : 'value2',
  }
  */

  Map marks = {'zaenal': 10, 'zendin': 30, 'abidin': 20}; // tipenya dynamic
  print(marks);
  print(marks['zaenal']);

  print('----------------------------');
  print('----------------------------');

  Map<String, int> marks2 = {'zaenal': 10, 'zendin': 30, 'abidin': 20};
  print(marks2);
  print(marks2['zendin']);
  print(marks2['abidin']?.isEven);
  print(marks2['enggak ada']?.isEven);

  if (marks2['coba aja'] == null) {
    print('Key does not exist ');
  } else {
    print(marks2['coba aja']!.isEven);
  }

  print('----------------------------');
  print('----------------------------');

  final marks3 = {10: '10', 20: '15', 30: '30'};
  print(marks3);
  print(marks3.runtimeType);

  marks3[40] = '200'; // added value
  print(marks3);

  marks3[10] = '100';
  print(marks3);

  marks3.addAll({100: "100", 120: '120'});
  print(marks3);

  final anotherMap = {50: '50', 60: '50', 70: '50'};
  marks3.addAll(anotherMap);
  print(marks3);

  marks3.remove(10); // remove
  print(marks3);

  marks3[20] = '10'; // updating value
  print(marks3);

  print('----------------------------');
  print('----------------------------');

  for (var i = 0; i < marks3.length; i++) {
    // gimana cara cuman akses dan baca keys 1 per 1?
    // print(marks3[i]); // null
    print(marks3.keys); // ini iterable, gak kesimpan
    print(marks3.keys.toList());
    print(marks3.keys.toList()[i]);
    print(marks3.values.toList()[i]);
  }
  // ribet kan cara diatas, mending gini aja
  for (final k in marks3.keys) {
    print('key: $k, value: ${marks3[k]}');
  }

  // paling enak
  for (final e in marks3.entries) {
    print('${e.key} -> ${e.value}');
  }

  marks3.forEach((key, value) {
    print('key : $key -> value : $value');
  });

  print('----------------------------');
  print('----------------------------');

  Map<String, int> matkulAnakA = {'Math': 10, 'English': 20, 'CS': 30};
  print(matkulAnakA);

  List<Map<String, int>> kumpulanMatkulSemuaAnak = [
    matkulAnakA,
    {'Math': 10, 'English': 20, 'CS': 30}, // Maps anak B
    {'Math': 20, 'English': 10, 'CS': 20}, // Maps anak C
  ];

  kumpulanMatkulSemuaAnak.map((e) {
    e.forEach((key, value) => print('$key = $value'));
  }).toList();
}

class Student {
  final String name;
  final int marks;

  Student(this.name, this.marks);
  @override
  String toString() {
    return 'Student : $name';
  }
}
