
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
enum properties{x,y}
class SimpleAnimationExample extends StatefulWidget {
  const SimpleAnimationExample({super.key});

  @override
  State<SimpleAnimationExample> createState() => _SimpleAnimationExampleState();
}

class _SimpleAnimationExampleState extends State<SimpleAnimationExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Simple Animation Example'),
      ),
      body: Center(
        child: LoopAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end : 5),
          duration: Duration(seconds:2),
          builder: (context, value, _)
              {
                return Transform.scale(
                  scale: value,
                  child: Center(
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/fb.png'),
                      )),
                );
              }
        ),
      )
    );
  }
}
