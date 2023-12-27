import 'package:flutter/material.dart';

class Day11_3 extends StatefulWidget {
  const Day11_3({super.key});

  @override
  State<Day11_3> createState() => _Day11_3State();
}

class _Day11_3State extends State<Day11_3> {
  int index = 0;
  List<Widget> MyPages = [HomePage(), LogoutPage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Day - 11.2 - Drawer widget"),
        ),
        drawer: Container(
          color: Colors.white,
          child: MyDrawer(onTouch: (ctx, i) {
            setState(() {
              index = i;
              Navigator.pop(ctx);
            });
          }),
        ),
        body: MyPages[index],
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTouch;
  MyDrawer({super.key, required this.onTouch});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child: CircleAvatar(),
                  ),
                  Text(
                    "Asto Nugroho",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () => onTouch(context, 0),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
            onTap: () => onTouch(context, 1),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home"),
    );
  }
}

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Logout"),
    );
  }
}
