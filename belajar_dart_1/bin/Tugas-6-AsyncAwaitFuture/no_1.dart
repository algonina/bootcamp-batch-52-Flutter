void main() async {
  var h = Human();

  print("Luffy");
  print("Zoro");
  print("Killer");
  await h.getAsyncData();
  print(h.name);
}

class Human {
  String name = "Nama character one piece";

  void getData() {}

  Future<void> getAsyncData() async {
    await Future.delayed(
        Duration(seconds: 3),
        () => ({
              name = "Hilmy",
              print("Get data done"),
            }));
  }
}
