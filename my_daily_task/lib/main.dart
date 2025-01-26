import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Daily Tasks',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Daily Tasks'),
        ),
        body: Center(
          child: Text('My Daily Tasks'),
        ),
      ),
    );
  }
}
