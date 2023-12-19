void main() {
  fetchUserOrder();
}

Future<void> fetchUserOrder() async {
  print('Life');

  Future.delayed(Duration(seconds: 2), () => print('Never Flat'));
  print('Is');
}
