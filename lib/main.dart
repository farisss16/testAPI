import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:testting/class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String body = 'No Data';

  void getData() async {
    var myResponse = await http
        .get(Uri.parse('https://api1.sib3.nurulfikri.com/api/barang/60'));
    Map<String, dynamic> data = jsonDecode(myResponse.body);
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: getData,
          child: Icon(
            Icons.get_app,
          ),
        ),
        appBar: AppBar(
          title: Text('API'),
        ),
        body: Center(
          child: Text(body),
        ),
      ),
    );
  }
}
