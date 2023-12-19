void main() async {
  print("Ready, sing!");
  await line1();
  await line2();
  await line3();
  await line4();
}

Future<void> line1() async {
  Future.delayed(Duration(seconds: 5), () => print('Pernahkah kau merasa'));
}

Future<void> line2() async {
  Future.delayed(Duration(seconds: 3), () => print('pernahkah kau merasa....'));
}

Future<void> line3() async {
  Future.delayed(Duration(seconds: 2), () => print('Pernahkah kau merasa....'));
}

Future<void> line4() async {
  Future.delayed(Duration(seconds: 1),
      () => print('Hatimu hampa, pernahkah kau merasa hatimu kosong...'));
}
