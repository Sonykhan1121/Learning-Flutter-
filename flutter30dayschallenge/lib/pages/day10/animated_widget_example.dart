import 'package:flutter/material.dart';

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({super.key});

  @override
  State<AnimatedWidgetExample> createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample>
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
    final animationCurve = CurvedAnimation(
      parent: _animationController!,
      curve: Curves.easeInExpo,
      reverseCurve: Curves.easeIn,
    );

    _animation = Tween<double>(begin: 0, end: 200).animate(animationCurve!)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController!.reverse();
        } else if (status == AnimationStatus.dismissed) {
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
        title: Text("Animated Widget"),
      ),
      body: ImageAnimatedWidget(
        animation: _animation,
      ),
    );
  }
}

class ImageAnimatedWidget extends AnimatedWidget {
  final Animation<double>? animation;

  ImageAnimatedWidget({this.animation}) : super(listenable: animation!);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    // TODO: implement build
    return Transform.translate(
      offset: Offset(0, animation!.value),
      child: Center(
          child: Container(
        height: 150,
        width: 150,
        child: Image.asset('assets/fb.png'),
      )),
    );
  }
}
