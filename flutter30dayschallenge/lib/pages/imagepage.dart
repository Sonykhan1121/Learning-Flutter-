import 'package:flutter/material.dart';

class Imagepage extends StatelessWidget {
  const Imagepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Day 2.1'),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Image.asset("assets/11.jpg"),
        ),
      ),
    );
  }
}
