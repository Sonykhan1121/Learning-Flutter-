import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/pages/day3.dart';
import 'package:flutter30dayschallenge/pages/day4.dart';
import 'package:flutter30dayschallenge/pages/day5.dart';
import 'package:flutter30dayschallenge/pages/day6.dart';
import 'package:flutter30dayschallenge/pages/day7.dart';
import 'package:flutter30dayschallenge/pages/home_page.dart';
import 'package:flutter30dayschallenge/pages/imagepage.dart';
import 'package:flutter30dayschallenge/pages/loginpage.dart';
import 'package:flutter30dayschallenge/pages/signup.dart';
import 'package:flutter30dayschallenge/pages/tiktokui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      themeMode: ThemeMode.light,
      // initialRoute:"/",
      // routes: {
      //   "/": (context)=>HomePage(),
      //   "/login":(context) => Loginpage(),
      //   "/signup":(context) => Signup(),
      // },
      debugShowCheckedModeBanner: false,
      title: "30 days Challenges",
      home: Day7(),
    );
  }
}
