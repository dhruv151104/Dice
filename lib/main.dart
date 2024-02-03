import 'package:flutter/material.dart';
import 'package:untitled2/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Scaffold(
        body: gradient_container(Colors.purple,Colors.blue),
      ),

    );
  }
}

