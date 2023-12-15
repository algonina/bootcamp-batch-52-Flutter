import 'dart:io';

import 'package:test/expect.dart';

void main() {
  print(soalEmpat());
}

/// Jawaban no 1
void soalSatu() {
  dynamic nama = "";
  dynamic peran = "";
  String output = "";

  while (nama == "") {
    print("Masukan nama (harus disi):");
    nama = stdin.readLineSync();
  }
  print("Nama peran (Guard | Penyihir | Werewolf):");

  peran = stdin.readLineSync();
  output = "Hallo $nama pilih peran mu untuk memulai game";
  if (peran != "" || peran.toString().length != 0) {
    if (peran == "Guard") {
      output =
          "Peranmu $peran Hallo guard $nama pilih peran mu untuk memulai game";
    } else if (peran == "Penyihir") {
      output =
          "Peranmu $peran Hallo penyihir $nama kamu akan membantu melindungi temanmu dari serangan werewolf";
    } else if (peran == "Werewolf") {
      output =
          "Peranmu $peran Hallo $nama Kamu akan memakan mangsa setiap malam!";
    }
  }

  print(output);
}

void soalDua() {
  String hari = "senin";
  String quote = '';
  switch (hari) {
    case 'senin':
      quote =
          'Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.';
      break;
    case 'selasa':
      quote = '''
Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.
''';
      break;
    case 'rabu':
      quote = '''
Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.
''';
      break;
    case 'kamis':
      quote = '''
Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.
''';
      break;
    case 'jumat':
      quote = '''
Hidup tak selamanya tentang pacar.
''';
      break;
    case 'sabtu':
      quote = '''
Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.
''';
      break;
    case 'minggu':
      quote = '''
Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.
''';
      break;
    default:
  }

  print(quote);
}

String soalEmpat() {
  int tanggal = 1;
  int bulan = 1;
  int tahun = 1990;

  List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Okt',
    'Nov',
    'Dec'
  ];

  if (bulan >= months.length) {
    return 'Format bulan Salah';
  }

  if (tanggal > 31) {
    return 'Format taggal Salah';
  }
  if (tahun < 1900 || tahun > 2200) {
    return 'Format tahun salah';
  }

  String namaBulan = (months[bulan]);

  return '$tanggal $namaBulan $tahun';
}
