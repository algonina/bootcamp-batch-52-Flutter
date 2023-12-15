void main() {
  dynamic variabel = 100;

  // konversi
  var variabelInt = variabel as int;

  // pengecekan
  var asInt = variabelInt is int;
  var notIs = variabel is! int;

  print(asInt);
  print(notIs);
}
