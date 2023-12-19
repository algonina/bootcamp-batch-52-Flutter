void main() {
  var nilaiA = 90;
  var nialiB = 80;
  if (nialiB > nilaiA) {
    print("nilai b lebih besar dari nilai A");
  } else if (nilaiA == 0) {
    print("Nilai A sama dengan 0");
  } else {
    print("nilai B lebih kecil dari nilai A");
  }

  String ucapan = (nilaiA > nialiB)
      ? "Nilai A lebih besar dai nilai B"
      : "Nilai A lebih kecil";
}
