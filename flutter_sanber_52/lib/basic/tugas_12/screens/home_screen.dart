import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sanber_52/basic/tugas_11/screens/profile_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_12/screens/users_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_11/widget/drawer_navigation.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> MyScreens = [ProfileScreen()];

  List? data;

  @override
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = UserScreen();

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: HexColor('#f9f9f9'),
        systemOverlayStyle:
            SystemUiOverlayStyle(systemNavigationBarColor: HexColor('#f9f9f9')),
      ),
      body: currentScreen,
      // floatingActionButton: FloatingActionButton.small(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  print("HOME page");
                  setState(() {
                    currentScreen = Center(child: Text("Home Page s"));
                  });
                },
                child: Icon(Icons.home),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = ProfileScreen();
                  });
                },
                child: Icon(Icons.person_2),
              ),
              MaterialButton(
                minWidth: 35.0,
                height: 35,
                onPressed: () {},
                color: HexColor('#130160'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Icon(Icons.chat),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Icon(Icons.mark_as_unread_sharp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
