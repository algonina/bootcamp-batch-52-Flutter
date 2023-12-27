import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sanber_52/basic/tugas_11/screens/profile_screen.dart';
import 'package:flutter_sanber_52/basic/tugas_11/widget/drawer_navigation.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> MyScreens = [ProfileScreen()];
  @override
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Center(child: Text("Home Page"));
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: HexColor('#f9f9f9'),
        systemOverlayStyle:
            SystemUiOverlayStyle(systemNavigationBarColor: HexColor('#f9f9f9')),
      ),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
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
                  setState(() {
                    currentScreen = Center(child: Text("Home Page"));
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
