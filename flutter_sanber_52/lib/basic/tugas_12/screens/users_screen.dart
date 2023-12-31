import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sanber_52/basic/tugas_12/screens/detail_user_screen.dart';
import 'package:http/http.dart' as http;

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List? data;

  @override
  void initState() {
    super.initState();
    this._getData();
  }

  Future<void> _getData() async {
    this.getData(context);
  }

  // ! Get data
  Future<void> getData(BuildContext context) async {
    var response = await http.get(
      Uri.parse("https://reqres.in/api/users?page=2"),
      headers: {"Accept": "application/json"},
    );

    setState(() {
      var convertJson = jsonDecode(response.body);
      data = convertJson['data'];
    });
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: _getData,
        child: data == null
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemBuilder: (BuildContext context, int i) {
                  return Container(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailUserScreen(value: data![i]['id'])));
                      },
                      subtitle: Text(data![i]['last_name']),
                      title: Text(data![i]['first_name']),
                      leading: CircleAvatar(
                        child: Image.network(
                          data![i]['avatar'],
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: data == null ? 0 : data!.length,
              ));
  }
}
