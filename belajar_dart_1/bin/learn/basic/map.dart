void main() {
  // key bertipe string dan data bertipe string
  Map<String, String> names = {'firstname': "A", 'lastname': "B"};

  // change value
  names['firstname'] = "C";
  // remove
  names.remove('lastname');
  // add value

  print(names);
}
