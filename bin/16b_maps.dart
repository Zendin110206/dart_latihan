// ❌ SALAH untuk Set kosong (ini Map kosong)
final a = {}; // a bertipe Map<dynamic, dynamic>

// ✅ BENAR untuk Set kosong
final b = <int>{}; // Set<int> kosong
final c = Set<String>(); // Set<String> kosong
const d = <double>{}; // const Set<double> kosong

// ✅ Set berisi (nggak perlu <T> karena bisa ditebak dari elemennya)
final e = {10, 20, 30}; // Set<int>

// ✅ Map berisi
final f = {'nama': 'Zaenal'}; // Map<String, String>

// ❌ Ini Map, bukan Set
final g = {}; // Map
// Set<int> h = {};             // ERROR: {} adalah Map, bukan Set

// ✅ Cara benar assign Set kosong:
Set<int> i = <int>{};
