import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNav extends StatefulWidget {
  GoogleNav({super.key});

  @override
  State<GoogleNav> createState() => _Day11_3State();
}

class _Day11_3State extends State<GoogleNav> {
  @override
  final PageStorageBucket bucket = PageStorageBucket();
  List<Widget> _myPages = [
    HomePage(),
    ProductPage(),
    FavoritPage(),
    SettingPage()
  ];
  Widget currentScren = HomePage();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Day - 11.3 - Bottom Navigation"),
        ),
        body: PageStorage(bucket: bucket, child: currentScren),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Icon(Icons.add),
        // ),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              color: Colors.deepPurple,
              child: GNav(
                backgroundColor: Colors.deepPurple,
                tabBackgroundColor: Colors.black,
                color: Colors.white,
                activeColor: Colors.white,
                padding: EdgeInsets.all(25),
                gap: 8,
                onTabChange: (value) {
                  setState(() {
                    currentScren = _myPages[value];
                  });
                },
                tabs: [
                  GButton(
                    padding: EdgeInsets.all(10),
                    icon: Icons.home,
                    text: "Home",
                  ),
                  GButton(
                    padding: EdgeInsets.all(10),
                    icon: Icons.favorite_border,
                    text: "Favorit",
                  ),
                  GButton(
                    padding: EdgeInsets.all(10),
                    icon: Icons.search,
                    text: "Search",
                  ),
                  GButton(
                    padding: EdgeInsets.all(10),
                    icon: Icons.settings,
                    text: "Setting",
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home Page"),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Product Page"),
    );
  }
}

class FavoritPage extends StatelessWidget {
  const FavoritPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Favorite Page"),
    );
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Setting Page"),
    );
  }
}
