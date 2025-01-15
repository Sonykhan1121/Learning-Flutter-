import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('GridView'),
        backgroundColor: Colors.grey,
      ),
      body: GridView.count(crossAxisCount: 2,
      children: [
        Card(
          color: Colors.green,
          child: Center(

            child: Text('This is a card'),
          ),
        ),


        Card(
          color: Colors.green,
          child: Center(

            child: Text('This is a another'),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(

            child: Text('This is a another'),
          ),
        ),
        Card(
          color: Colors.green,
          child: Center(

            child: Text('This is a another'),
          ),
        ),
      ],
      ),
    );
  }
}
