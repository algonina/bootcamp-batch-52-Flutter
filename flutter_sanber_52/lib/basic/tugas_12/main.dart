import 'package:flutter/material.dart';
import 'package:flutter_sanber_52/basic/tugas_12/screens/detail_user_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_12/screens/home_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_12/screens/login_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_12/screens/onboard_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_12/screens/profile_screen.dart';

class RunTugas12 extends StatefulWidget {
  RunTugas12({super.key});

  @override
  State<RunTugas12> createState() => _RunTugas12State();
}

class _RunTugas12State extends State<RunTugas12> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tugas 12",
      home: OnBoardScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/user': (context) => DetailUserScreen()
      },
    );
  }
}
