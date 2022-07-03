import 'package:flutter/material.dart';
import 'my_questions/application.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Application(),
      title: "Main Demo",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}
