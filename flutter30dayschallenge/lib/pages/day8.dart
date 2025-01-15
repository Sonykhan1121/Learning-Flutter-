import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/pages/home_page.dart';
import 'package:flutter30dayschallenge/pages/loginpage.dart';
import 'package:flutter30dayschallenge/pages/signup.dart';

class UserData{
  final String username;
  final String userId;

  UserData(this.username, this.userId);
}
class Day8 extends StatelessWidget {
  const Day8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 8'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed:(){
              Navigator.pushNamed(context, '/signup');
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
            } , child: Text('Sign Up')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/login');
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
            }, child: Text('Sign In')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed:
            (){
              Navigator.pushNamed(context, '/home',arguments: UserData("tht", '101'));
              // Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
            }, child: Text('Home Page')),

          ],
        ),
      ),
    );
  }
}
