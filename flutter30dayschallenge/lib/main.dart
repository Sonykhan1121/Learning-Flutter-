import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/pages/day3.dart';
import 'package:flutter30dayschallenge/pages/home_page.dart';
import 'package:flutter30dayschallenge/pages/imagepage.dart';
import 'package:flutter30dayschallenge/pages/loginpage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "30 days Challenges",
        home: Loginpage(),
      );
  }

}