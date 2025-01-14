import 'package:flutter/material.dart';

class Day7 extends StatefulWidget {
  const Day7({super.key});

  @override
  State<Day7> createState() => _Day7State();
}

class _Day7State extends State<Day7> {
  String data = "";
  double h = 100, w = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 7'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              color: Colors.green,
              width: w,
              height: h,
              curve: Curves.bounceOut,
              transform: Matrix4.rotationZ(h),
              duration: Duration(milliseconds: 600),
            ),
            Text('Data is : $data'),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                call();
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text("Click Me"),
              ),
            )
          ],
        ),
      ),
    );
  }

  void call() {
    setState(() {
      h+=50;
      w+=50;
      data = "Data Fetched Successfully";
    });
  }
}
