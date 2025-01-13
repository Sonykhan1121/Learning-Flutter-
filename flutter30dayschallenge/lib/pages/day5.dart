import 'dart:io';
import 'package:flutter/material.dart';

class Day5 extends StatelessWidget {
  const Day5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Day 5'),
      ),
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              )),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
          ),
          Positioned(
            left: 70,
            right: 70,
            bottom: 70,
            child: Container(
              width: 90,
              height: 90,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
