import 'package:flutter/material.dart';
import 'package:lecture3/screens/home_screen.dart';
import 'package:lecture3/screens/screen2.dart';
import 'package:lecture3/screens/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        Screen2.routename: (context) => Screen2(),
        Screen3.routename: (context) => Screen3(),
      },
    );
  }
}
