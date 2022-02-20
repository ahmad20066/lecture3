// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lecture3/screens/screen2.dart';
import 'package:lecture3/screens/screen3.dart';

class HomeScreen extends StatelessWidget {
  static const routename = '/HomeScreen';
  String text = 'Hello World';
  String text2 = 'Hello World 2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, Screen2.routename, arguments: {
                  'text': text,
                  'text2': text2,
                }); //Go to Screen 2
              },
              icon: Icon(Icons.arrow_forward),
              label: Text('Go to Screen 2')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Screen3.routename);
              }, //Go to Screen 3
              child: Text("Go to Screen 3"))
        ],
      )),
    );
  }
}
