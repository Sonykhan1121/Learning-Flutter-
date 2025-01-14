import 'package:flutter/material.dart';

class Day6 extends StatefulWidget {
  const Day6({super.key});

  @override
  State<Day6> createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Day 6'),
        //
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter value : $value',
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    value++;
                  });
                },
                child: Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    value--;
                  });
                },
                child: Icon(Icons.remove),
              ),
              containerButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget containerButton() {
    return InkWell(
      onTap: (){
        setState(() {
          value += 2;
        });
      },
      child: Container(

        height: 70,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Text("Double Increment ! "),
      ),
    );
  }
}
