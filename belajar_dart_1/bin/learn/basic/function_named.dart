void main() {
  sayHello(name: "Algonina", time: 'morning');
}

void sayHello({required String name, String time = "a"}) {
  print('Hello $name, good $time');
}
