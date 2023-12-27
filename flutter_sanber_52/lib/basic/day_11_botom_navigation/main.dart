import 'package:flutter/material.dart';

class Day11_4 extends StatefulWidget {
  const Day11_4({super.key});

  @override
  State<Day11_4> createState() => _Day11_3State();
}

class _Day11_3State extends State<Day11_4> {
  @override
  final PageStorageBucket bucket = PageStorageBucket();
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
        floatingActionButton: Container(
          height: 40,
          width: 40,
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () => {},
                      minWidth: 40,
                      child: Column(
                        children: [Icon(Icons.home), Text("Home")],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () => {},
                      child: Column(
                        children: [Icon(Icons.home), Text("Home")],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () => {},
                      child: Column(
                        children: [Icon(Icons.home), Text("Home")],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () => {},
                      child: Column(
                        children: [Icon(Icons.home), Text("Home")],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
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
