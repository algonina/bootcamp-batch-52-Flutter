void main() {
  Set<double> doubles = {2, 3, 4};
  print(doubles);
  var names = <String>{};

  names.add('a');
  names.add('c');
  names.add('c');

  names.remove('sdd');

  print(names);
}
