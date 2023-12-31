import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DetailUserScreen extends StatefulWidget {
  int? value;
  DetailUserScreen({Key? key, this.value}) : super(key: key);

  @override
  State<DetailUserScreen> createState() => _DetailUserScreenState(value);
}

class _DetailUserScreenState extends State<DetailUserScreen> {
  int? value;
  Map? data;

  _DetailUserScreenState(this.value);
  @override
  void initState() {
    print(this.value);
    this._getDetailData();
  }

  // !get data
  Future<void> _getDetailData() async {
    getDataDetailUser(context);
  }

  Future<void> getDataDetailUser(BuildContext context) async {
    var response = await http.get(
      Uri.parse("https://reqres.in/api/users/${this.value}"),
      headers: {"Accept": "application/json"},
    );
    print(response.body);

    setState(() {
      var cnvrtJson = jsonDecode(response.body);
      data = cnvrtJson['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: data == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(data!['avatar']),
                  ),
                  Text(data!['first_name']),
                  Text(data!['last_name']),
                  Text(data!['email']),
                ],
              ),
      ),
    );
  }
}
