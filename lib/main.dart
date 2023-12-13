import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: _title,
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const HomeScreen(), // Change MyHomePage to HomeScreen
    );
  }
}
