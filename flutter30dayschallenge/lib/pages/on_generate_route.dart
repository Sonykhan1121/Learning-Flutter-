import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/pages/grid_view_builder.dart';
import 'package:flutter30dayschallenge/pages/grid_view_example.dart';
import 'package:flutter30dayschallenge/pages/home_page.dart';
import 'package:flutter30dayschallenge/pages/list_view_example.dart';
import 'package:flutter30dayschallenge/pages/loginpage.dart';
import 'package:flutter30dayschallenge/pages/page_view_builder.dart';
import 'package:flutter30dayschallenge/pages/signup.dart';

import 'day8.dart';
import 'list_view_builder_example.dart';

class OnGenerateRoute{
  static Route<dynamic> route(RouteSettings settings)
  {
    final args = settings.arguments;
    if(settings.name =='/')
      {
        return MaterialPageRoute(builder: (context)=>PageViewBuilder());

      }
    else if(settings.name =='/home')
      {
        if(args is UserData)
          {
            return MaterialPageRoute(builder: (context)=> HomePage(args,));
          }
        else
          {
            return MaterialPageRoute(builder:(_)=>
            Scaffold(
              appBar: AppBar(
                title: Text('Error'),
                backgroundColor: Colors.red,
              ),
              body: Center(
                child: Text('Something wrong'),
              ),
            )
            );
          }
      }
    else if (settings.name =='/login')
      {
        return MaterialPageRoute(builder: (context)=> Loginpage(),);
      }
    else if(settings.name =='/signup')
      {
        return MaterialPageRoute(builder: (context)=>Signup(),);

      }
    else
      {
        return MaterialPageRoute(builder: (context)=>Scaffold(
          appBar: AppBar(
            title: Text('Error'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Text('Something Wrong'),
          ),
        ),);
      }

  }
}