import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 2"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Container(

          height: 400,
          width: 400,
          alignment: Alignment.center,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Center(
            child: Text(
              "Flutter 30 days Challenges",
              style: TextStyle(
                backgroundColor: Colors.black,
                fontSize: 40,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
