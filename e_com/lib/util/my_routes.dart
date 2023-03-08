import 'package:e_com/screen/home_screen.dart';
import 'package:e_com/screen/login_screen.dart';
import 'package:e_com/screen/signup_screen.dart';
import 'package:e_com/util/route_names.dart';
import 'package:flutter/material.dart';

class MyRoutes{
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name){
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context)=> const HomeScreen());
      case RouteNames.loginScreen:
        return MaterialPageRoute(builder: (context)=> const LoginScreen());
      case RouteNames.signupScreen:
        return MaterialPageRoute(builder: (context)=> const SignupScreen());
      default:
        return MaterialPageRoute(builder: (context)=> const LoginScreen());
    }
  }
}