void main() {
  // Enums
  final employee1 = Employee('Zaenal', EmployeeType.swe);
  final employee2 = Employee('Naman', EmployeeType.finance);
  final employee3 = Employee('Abidin', EmployeeType.marketing);
  // final employeeSalah = Employee('waw', 'hahahahaha'); ini cara tidak best practises

  // panggil fn() per-objek:
  employee1.fn(); // -> Software Engineering
  employee2.fn(); // -> Finance
  employee3.fn(); // -> something went wrong

  print('--------------');
  print('--------------');
  // atau panggil bareng-bareng:
  final all = [employee1, employee2, employee3];
  for (final e in all) {
    e.fn();
  }
}

enum EmployeeType {
  swe(200000),
  finance(250000),
  marketing(150000);

  final int salary;

  const EmployeeType(this.salary);
}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void fn() {
    switch (type) {
      case EmployeeType.swe:
        print('Software Engineering');
        print(type.salary);
      case EmployeeType.finance:
        print('Finance');
        print(EmployeeType.finance.salary);
      default:
        print('something went wrong');
    }
  }
}
