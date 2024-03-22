import 'package:flutter/material.dart';
import '../views/screen_five.dart';
import '../views/screen_four.dart';
import '../views/screen_one.dart';
import '../views/screen_three.dart';
import '../views/screen_two.dart';

class MyRoutes {
  /// to navigate defined initial route or when we click to go next screen ///
  static Route<dynamic>? onGenerateRoutes(RouteSettings routeSettings){
    switch(routeSettings.name){
      case "/" : return MaterialPageRoute(builder: (context) => ScreenOne());
      case "/ScreenTwo" : return MaterialPageRoute(builder: (context) => ScreenTwo());
      case "/ScreenThree" : return MaterialPageRoute(builder: (context) => ScreenThree());
      case "/ScreenFour" : return MaterialPageRoute(builder: (context) => ScreenFour());
      case "/ScreenFive" : return MaterialPageRoute(builder: (context) => ScreenFive());
    }
    print("Out of switch..........");
    return null;
  }
}