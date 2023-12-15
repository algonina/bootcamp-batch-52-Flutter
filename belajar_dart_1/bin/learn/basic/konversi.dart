void main() {
  var inputString = '1000';

  // ! Parse
  var inputInt = int.parse(inputString);
  var inputDouble = double.parse(inputString);

  var inputToDouble = inputInt.toDouble();
  var inputToInt = inputDouble.toInt();

  var intToString = inputInt.toString();
  var doubleToString = inputDouble.toString();

  var inputBoolean = true;
  var booleanToString = inputBoolean.toString();
}
