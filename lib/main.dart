import 'package:flutter/material.dart';
import 'package:myschool/screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My school',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: mainscreen(),
    );
  }
}
