// Variabel

void main() {
  // 1 deklarasi
  var name = "asto nugroho";

  // 2 deklarasi - Type data
  String variabelDua = "asto";
  int variabelTiga = 10;
  bool variabelEmpat = true;
  double variabelLima = 20.1;

  // const and final
  final variabelFinal = "final variabel";
  const variabelConst = "coba";

  late var value = getValue();
  print("Mulai");
  print(value);
}

String getValue() {
  print("Mulai membuat variabel");

  return "Variabel berhasil dibuat";
}
