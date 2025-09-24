bool isAdult = false;

bool isAllowed = false;
void main() {
  // If Statements

  int age = 21;

  if (age >= 18) {
    print('ADULT');
  } else if (age >= 21) {
    //BAD LOGIC
    print('ADULT 21');
  } else {
    print('CHILD');
  }

  if (age >= 21) {
    print('ADULT 21');
  } else if (age >= 188) {
    //GOOD LOGIC
    print('ADULT');
  } else {
    print('CHILD');
  }

  // bool isAdult = false; bakalan ngasih warning dead code, ya karena compiler udah tau kalau false kenapa ngasih if? makanya fungsi main itu kek context gitu
  if (isAdult) {
    print('ADULT');
  } else {
    print('CHILD');
  }

  // https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.nonstopio.com%2Fflutter-lets-get-familiar-with-dart-operators-9317f4af6f8f&psig=AOvVaw3KXgT7TzPBaeeWcNZcMvXc&ust=1757546315029000&source=images&cd=vfe&opi=89978449&ved=0CBgQjhxqFwoTCPiJ8bHozI8DFQAAAAAdAAAAABAJ

  if (age != 18 && !isAllowed) {
    // jangan bingung ya!
    print('Enggak Boleh ');
  } else {
    print('SOKINNNNN');
  }

  if (age != 18) {
    String someValue = 'Hey';
    print(someValue);
  }

  // print(someValue); inilah namanya scope, lihat someValue tidak bakalan kedetrct kalau ditulis disini

  String someValue = 'Hi!';

  if (someValue.isEmpty) {
    print('wow');
  } else {
    print('naha');
  }

  if (someValue.isNotEmpty) {
    print('wow');
  } else {
    print('naha');
  }

  // Ternary

  String value = someValue.startsWith('H') ? 'WOW' : 'naha';

  print(value);
  print(someValue.startsWith('H') ? 'WOW' : 'naha');

  // Switch Statement

  age = 20;

  switch (someValue) {
    case 'Hi!' when age>= 20: 
      print('Hello! ini switch');
    // break; // katanya tidak perlu tulis ini di dart 3.0 ke atas, beda dengan bahasa program lainnya

    case 'Hi':
      break; // baru dipake kalau katanya gak ada isinya gituuuu

    // BUT JUST USE AS WHAT WE ALREADY KNOW
    default:
      print("YAHHHH");
  }
}
