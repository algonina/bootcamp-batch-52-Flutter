import 'package:test/expect.dart';
import 'dart:io';

void main() {
  soalEmpatA(2, 3);
}

/// ! Jawaban Soal 1A
String soalSatuA() {
  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it';

  return '$word $second $third $fourth $fifth $sixth $seventh';
}

/// ! Jawaban Soal 2A
void soalDuaA() {
  var sentence = "I am going to be Flutter Developer";
  var words = sentence.split(" ");
  var first = words[0];
  var second = words[1];
  var third = words[2];
  var fourth = words[3];
  var fifth = words[4];
  var sixth = words[5];
  var seventh = words[6];

  print("1st $first");
  print("2nd $second");
  print("3rd $third");
  print("4th $fourth");
  print("5th $fifth");
  print("6th $sixth");
  print("7th $seventh");
}

/// ! Jawaban Soal 3A
void soalTigaA() {
  print("First name");
  String? firstname = stdin.readLineSync();
  print("Last name");
  String? lastname = stdin.readLineSync();

  print('nama lengkap anda adalah $firstname $lastname');
}

/// ! Jawaban Soal 4A

void soalEmpatA(int a, int b) {
  print('$a $b');

  num perkalian = a * b;
  num penguarangan = a - b;
  num penjumlahan = a + b;
  num pembagian = a / b;

  print('perkalian = $perkalian');
  print('penjumlahan = $penjumlahan');
  print('pengurangan = $penguarangan');
  print('pembagian = $pembagian');
}
