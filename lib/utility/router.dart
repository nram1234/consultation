import 'package:flutter/material.dart';

import '../main.dart';
import '../screen/splash.dart';

import 'page_transition.dart';

class MyRouter{
  static Route<dynamic>myGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.FirstScreen:
        return MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'm',));
      case Routes.SecondScreen:
        return MyPageTransition( page: SPLASH());
      case Routes.SecondScreen:
        return MyPageTransition( page: SPLASH());
      default:
        return MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'f',));
    }
  }
}


class Routes{

  static const FirstScreen="/";
  static const SecondScreen="/second";
  static const ResScreen="/ResScreen";
}