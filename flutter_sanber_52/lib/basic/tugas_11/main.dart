import 'package:flutter/material.dart';
import 'package:flutter_sanber_52/basic/tugas_11/screens/home_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_11/screens/login_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_11/screens/onboard_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_11/screens/profile_screen.dart';

class RunTugas11 extends StatefulWidget {
  RunTugas11({super.key});

  @override
  State<RunTugas11> createState() => _RunTugas11State();
}

class _RunTugas11State extends State<RunTugas11> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tugas 10",
      home: OnBoardScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen()
      },
    );
  }
}
