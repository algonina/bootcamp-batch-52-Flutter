import 'package:flutter/material.dart';
import 'package:flutter_sanber_52/basic/tugas_10/screens/login_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_10/screens/onboard_screen.dart';

class RunTugas10 extends StatefulWidget {
  RunTugas10({super.key});

  @override
  State<RunTugas10> createState() => _RunTugas10State();
}

class _RunTugas10State extends State<RunTugas10> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tugas 10",
      home: OnBoardScreen(),
      routes: {'/login': (context) => LoginScreen()},
    );
  }
}
