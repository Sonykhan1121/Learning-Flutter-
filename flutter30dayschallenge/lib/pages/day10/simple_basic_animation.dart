import 'package:flutter/material.dart';
import 'dart:math' as math;

class SimpleBasicAnimation extends StatefulWidget {
  const SimpleBasicAnimation({super.key});

  @override
  State<SimpleBasicAnimation> createState() => _SimpleBasicAnimationState();
}

class _SimpleBasicAnimationState extends State<SimpleBasicAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    final animationCurve = CurvedAnimation(parent: _animationController!, curve: Curves.easeInExpo, reverseCurve: Curves.easeIn,);
    
    _animation = Tween<double>(begin: 0, end: 200)
        .animate(animationCurve!)..addListener((){
          setState(() {

          });
    })..addStatusListener((status){
      if (status ==AnimationStatus.completed)
        {
          _animationController!.reverse();
        }
      else if(status ==AnimationStatus.dismissed)
        {
          _animationController!.forward();
        }
    });
    _animationController!.forward();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Basic Animation'),
      ),
      body: Transform.translate(
        offset: Offset(0,_animation!.value),
        child: Center(
            child: Container(
          height: 150,
          width: 150,
          child: Image.asset('assets/fb.png'),
        )),
      ),
    );
  }
}
