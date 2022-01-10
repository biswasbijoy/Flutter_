import 'package:flutter/material.dart';
import 'package:interesting_place_in_world/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: HomeScreen()
      );
  }
}