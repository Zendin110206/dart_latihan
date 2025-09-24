// ===============================================
// CLASS MODIFIERS (Dart 3) — versi pemula (fix, no conflicts)
// ===============================================
// Yang dibahas & dicontohkan:
// 1) sealed          → switch-case lengkap (exhaustive) tanpa default
// 2) interface class → kontrak murni: TIDAK boleh extend, wajib implements
// 3) base            → boleh diwarisi, tapi turunan harus pakai modifier juga
// 4) final           → TIDAK boleh diwarisi (no extend / no with), boleh implements
// (Bonus pengingat) abstract & mixin — sering terkait tapi bukan class modifier baru

void main() {
  print('=== 1) SEALED ===');
  demoSealed();

  print('\n=== 2) INTERFACE CLASS ===');
  demoInterfaceClass();

  print('\n=== 3) BASE ===');
  demoBase();

  print('\n=== 4) FINAL ===');
  demoFinal();

  print('\n=== (Bonus) ABSTRACT & MIXIN (pengingat singkat) ===');
  demoAbstractAndMixin();
}

/* -------------------------------------------------------
 * 1) SEALED — bantu switch-case lengkap tanpa default
 * -------------------------------------------------------
 * IDEANYA:
 * - Semua anak dari kelas ini harus didefinisikan di file/library yang sama,
 *   jadi compiler tahu daftarnya lengkap.
 * - Keuntungannya: switch-case bisa tanpa "default".
 */

sealed class SealedAnimal {
  const SealedAnimal();
}

// Semua subtype HARUS didefinisikan di file yang sama:
class DogS extends SealedAnimal {
  const DogS();
}

class CatS extends SealedAnimal {
  const CatS();
}

class HumanS extends SealedAnimal {
  const HumanS();
}

void demoSealed() {
  SealedAnimal a = const CatS();

  // Karena SealedAnimal “sealed”, kita boleh switch tanpa default:
  switch (a) {
    case DogS():
      print('Ini anjing');
    case CatS():
      print('Ini kucing');
    case HumanS():
      print('Ini manusia');
  }

  // NOTE:
  // Kalau kamu menambah subtype baru, misalnya:
  // class FoxS extends SealedAnimal {}
  // maka semua switch di atas akan diminta menambahkan case FoxS juga.
}

/* -------------------------------------------------------
 * 2) INTERFACE CLASS — kontrak murni (tidak boleh extend)
 * -------------------------------------------------------
 * IDEANYA:
 * - “Jangan extend aku, tapi implement kontrakku.”
 * - Implementer WAJIB menuliskan ulang (override) membernya,
 *   meski di interface class ada body.
 */

interface class GreeterInterface {
  // Boleh ada body. Ini hanya kepakai kalau DI-INSTANCE langsung.
  void halo() {
    print('(default) Halo dari GreeterInterface');
  }
}

// ❌ Tidak boleh (akan error jika di-uncomment):
// class BadGreeter extends GreeterInterface {}

class MyGreeter implements GreeterInterface {
  @override
  void halo() => print('Halo dari implementasi saya sendiri ✅');
}

void demoInterfaceClass() {
  // Biasanya dipakai via implementer:
  GreeterInterface g1 = MyGreeter();
  g1.halo(); // → Halo dari implementasi saya sendiri ✅

  // (Opsional) Bisa juga instance langsung (jarang dipakai di proyek besar):
  GreeterInterface g2 = GreeterInterface();
  g2.halo(); // → (default) Halo dari GreeterInterface
}

/* -------------------------------------------------------
 * 3) BASE — pewarisan yang terkontrol (disiplin)
 * -------------------------------------------------------
 * IDEANYA:
 * - “Boleh di-extend, tapi anak-anak harus tertib”: turunan WAJIB diberi
 *   modifier juga (base / final / sealed).
 */

base class VehicleBase {
  void drive() => print('VehicleBase jalan...');
}

// ✅ BOLEH: anak diberi modifier "base" juga.
base class CarBase extends VehicleBase {
  @override
  void drive() => print('CarBase melaju 🚗');
}

// ❌ TIDAK BOLEH: turunan tanpa modifier (akan error kalau di-uncomment)
// class BikeBad extends VehicleBase {}

void demoBase() {
  final vb = VehicleBase();
  vb.drive(); // VehicleBase jalan...

  final cb = CarBase();
  cb.drive(); // CarBase melaju 🚗
}

/* -------------------------------------------------------
 * 4) FINAL — larang warisan (no extend / no with)
 * -------------------------------------------------------
 * IDEANYA:
 * - “Kelas ini tidak boleh menjadi superclass” → tidak boleh extend/with.
 * - Tapi masih boleh di-implements (kontraknya saja).
 */

final class HttpClientFinal {
  void send(String url) => print('Kirim ke $url');
}

// ❌ Tidak boleh extend final class:
// class MyClientBad extends HttpClientFinal {}

// ❌ Tidak boleh with final class:
// class ServiceBad with HttpClientFinal {}

// ✅ Boleh implements (ambil kontraknya saja)
final class LoggingClientImpl implements HttpClientFinal {
  @override
  void send(String url) => print('[LOG] $url');
}

void demoFinal() {
  final hc = HttpClientFinal();
  hc.send('https://example.com'); // Kirim ke https://example.com

  final log = LoggingClientImpl();
  log.send('https://example.com'); // [LOG] https://example.com
}

/* -------------------------------------------------------
 * (Bonus pengingat) ABSTRACT & MIXIN
 * -------------------------------------------------------
 * abstract class  : cetak biru; tidak bisa di-instance; bisa punya method abstrak & default.
 * mixin           : “tempel kemampuan” (with); bukan relasi induk–anak; bisa multiple.
 */

// ABSTRACT: memaksa anak mengisi method abstrak; boleh memberi default method juga
abstract class GreeterAbs {
  void halo(); // abstrak (wajib diisi oleh anak yang extends)
  void sapaPanjang() {
    // default (boleh dipakai/override anak)
    print('Halo selamat datang 🙌');
  }
}

class GreeterId extends GreeterAbs {
  @override
  void halo() => print('Halo dari Indonesia 🇮🇩');
}

// MIXIN: menempelkan kemampuan sederhana ke class lain (bisa beberapa sekaligus)
mixin JumpMx {
  int jumping = 10;
  void jump() => print('Lompat $jumping kali');
}

class AnimalWithJump with JumpMx {}

class CatWithJump extends AnimalWithJump {}

void demoAbstractAndMixin() {
  // Abstract + extends
  final g = GreeterId();
  g.halo(); // Halo dari Indonesia 🇮🇩
  g.sapaPanjang(); // Halo selamat datang 🙌

  // Mixin
  final a = AnimalWithJump();
  a.jump(); // Lompat 10 kali

  final c = CatWithJump();
  c.jump(); // Lompat 10 kali
}

/* ======================================================
 * RINGKASAN PILIH CEPAT (rule of thumb)
 * ======================================================
 * - sealed:
 *     Pakai kalau mau switch-case lengkap tanpa default,
 *     dan ingin semua subtype didefinisikan di 1 file/library.
 *
 * - interface class:
 *     Pakai kalau mau BUKA KONTRAK tapi TUTUP pewarisan implementasi.
 *     Orang lain wajib "implements" (bikin versi sendiri), bukan "extends".
 *
 * - base:
 *     Pakai kalau masih ingin mengizinkan warisan, tapi anak harus tertib
 *     (turunan wajib diberi modifier juga: base/final/sealed).
 *
 * - final:
 *     Pakai kalau ingin melarang pewarisan sama sekali (no extend / no with),
 *     tapi masih mau membuka kontrak (boleh implements).
 *
 * - abstract (pengingat):
 *     Pakai untuk blueprint + (opsional) default behavior yang bisa diwarisi via extends.
 *
 * - mixin (pengingat):
 *     Pakai untuk tempel “skill” reusable lintas hierarki (with …, bisa multiple).
 */
