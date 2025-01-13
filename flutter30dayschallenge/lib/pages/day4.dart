import 'package:flutter/material.dart';

class Day4 extends StatelessWidget {
  const Day4({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "THT";
    int age = 20;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('Day 4 '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.mail,
              size: 90,
              color: Colors.red,
            ),
          ),
          Text("$name $age"),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.black,
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Container(
              height: 50,
              width: 50,
              color: Colors.black,
            ),
          ),

        ],
      ),
    );
  }
}
