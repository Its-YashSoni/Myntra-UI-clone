import 'package:flutter/material.dart';
import 'package:myntra_ui_clone/Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Myntra",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}