// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lecture3/screens/home_screen.dart';

class Screen3 extends StatelessWidget {
  static const routename = '/Screen 3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.popUntil(
                context, ModalRoute.withName(HomeScreen.routename));
          },
          child: Text('Pop Until'),
        ),
      ),
    );
  }
}
