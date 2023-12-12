void main() {
  String variabelString = 'String';
  String variabelStringSatu = "String uda";

  print(variabelString);
  print(variabelStringSatu);

  // string interpolation

  String interpolation = '\$variabelStringSatu ${variabelString}';

  String text = 'this is \' dart \' $variabelString';

  String fullname = variabelString + variabelStringSatu;
  String name = 'Firstname ' 'Lastname';

  String longString = '''
  alsdasjdhas
  askdhaskdjha
  aksdjhaksjd
  aksjdhakjsdh

''';
  print(name);
}
