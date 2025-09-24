void main() {
  var account = BankAccount();

  print(account.balance); // 0.0

  account.deposit(1000);
  print(account.balance); // 1000.0

  account.withdraw(200);
  print(account.balance); // 800.0

  account.balance = -5000; // ❌ Error: saldo tidak boleh negatif

  account.withdraw(2000); // ❌ Error: saldo tidak cukup

  print(account._balance); 
}

class BankAccount {
  // saldo private (cuma bisa diakses lewat getter/setter)
  double _balance = 0.0;

  // Getter saldo (read-only ke luar)
  double get balance => _balance;

  // Setter saldo (dengan validasi)
  set balance(double newBalance) {
    if (newBalance < 0) {
      print("❌ Error: saldo tidak boleh negatif");
    } else {
      _balance = newBalance;
    }
  }

  // Method deposit (tambah uang ke saldo)
  void deposit(double amount) {
    if (amount <= 0) {
      print("❌ Error: jumlah deposit harus lebih dari 0");
      return;
    }
    _balance += amount;
  }

  // Method withdraw (tarik uang)
  void withdraw(double amount) {
    if (amount <= 0) {
      print("❌ Error: jumlah penarikan harus lebih dari 0");
      return;
    }
    if (amount > _balance) {
      print("❌ Error: saldo tidak cukup");
      return;
    }
    _balance -= amount;
  }
}

/*

Mantap, ini pertanyaan yang **sering bikin bingung** orang pas baru belajar 👌.
Kita bedah pelan-pelan ya.

---

## 🔎 1. Sama-sama bisa validasi

Betul banget 👇

* `set balance(...) { ... }` bisa dipakai untuk validasi.
* `deposit(...)` / `withdraw(...)` juga dipakai untuk validasi.

Jadi memang **sekilas kelihatan sama**.

---

## 🔎 2. Bedanya di *niat pemakaian*

### 📌 Setter

* Dipakai ketika kamu ingin orang luar **langsung kelihatan seperti assign variabel**.
* Misalnya:

```dart
account.balance = 500;
```

Kelihatan kayak **ngubah variabel biasa**, padahal di dalamnya ada validasi.
➡️ Jadi `set` dipakai untuk **property-like behavior**.

---

### 📌 Method

* Dipakai ketika kamu ingin orang luar sadar bahwa dia sedang **melakukan sebuah aksi**.
* Misalnya:

```dart
account.deposit(1000);
account.withdraw(200);
```

Dari nama dan cara pemanggilan, jelas ini adalah sebuah **proses/aksi**, bukan sekadar ngisi variabel.

---

## 🔎 3. Kenapa nggak semua pakai setter aja?

Kalau kamu bikin begini:

```dart
account.deposit = 1000;   // ❌
account.withdraw = 200;   // ❌
```

Secara *bahasa alami* aneh kan?
Deposit/withdraw itu **aksi**, bukan properti.
Maka lebih wajar ditulis sebagai **method**.

---

## 🔎 4. Jadi kapan pakai setter, kapan pakai method?

* **Setter**:
  Kalau konteksnya kayak *property* (misalnya `balance`, `temperature`, `name`) → cocok dipakai `set`.

* **Method**:
  Kalau konteksnya jelas sebuah *aksi* (misalnya `deposit`, `withdraw`, `printReceipt`, `sendEmail`) → pakai method/fungsi biasa.

---

## ⚡ Contoh final biar jelas

```dart
account.balance = 500;   // pakai setter → property-style
print(account.balance);  // pakai getter → property-style

account.deposit(1000);   // method → aksi nyata
account.withdraw(200);   // method → aksi nyata
```

---

👉 Jadi kamu bisa ingat:

* **Getter/Setter** = akses / ubah data kayak variabel.
* **Method** = lakukan aksi.

---

Mau aku bikinin contoh lain (bukan bank), misalnya **Thermometer** dengan setter/getter vs method, biar makin kerasa bedanya?

*/
