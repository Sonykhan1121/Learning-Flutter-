import 'package:flutter/material.dart';

import 'day8.dart';

class HomePage extends StatelessWidget {
  final UserData userData;

  HomePage(this.userData);

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

          height: 500,
          width: 500,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Center(
            child: Text(
              "Flutter 30 days Challenges :\n ${userData.username} \n${userData.userId}",
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
