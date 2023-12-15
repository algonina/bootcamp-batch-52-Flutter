// operator logika

void main() {
  var nilaiAkhir = 80;
  var nilaiAbsen = 80;
  var apakahNilaiAkhirBagus = nilaiAkhir >= 75;
  var apakahNilaiAbsenBagus = nilaiAbsen >= 75;

  print(apakahNilaiAkhirBagus);

// operator logika
  var lulus = apakahNilaiAbsenBagus || apakahNilaiAkhirBagus;
  // kebalikan
  var negasi = !lulus;
}
