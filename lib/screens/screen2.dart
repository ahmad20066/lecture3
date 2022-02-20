// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lecture3/screens/screen3.dart';

class Screen2 extends StatelessWidget {
  static const routename = '/Screen 2';

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final text = arguments['text'];
    final text2 = arguments['text2'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back')),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Screen3.routename);
                },
                child: Text('Go to Screen 3')),
            Text(text),
            Text(text2)
          ],
        ),
      ),
    );
  }
}
