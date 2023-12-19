void main() {
  sayHello("algonina");
}

void sayHello(String name, [String time = "Morning"]) {
  print('Hello $name, good $time');
}
