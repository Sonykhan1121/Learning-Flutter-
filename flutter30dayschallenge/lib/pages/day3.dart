import 'package:flutter/material.dart';

class Day3 extends StatelessWidget {
  const Day3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 3 is Cool'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 190, width: 190,color: Colors.red,),
          Container(height: 60, width: 60,color: Colors.green,),
          Container(height: 60, width: 60,color: Colors.black,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(height: 190, width: 190,color: Colors.red,),
              Container(height: 60, width: 60,color: Colors.green,),
              Container(height: 60, width: 60,color: Colors.black,),
            ],
          )
        ],
      ),
    );
  }
}
