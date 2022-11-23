import 'package:consultation/screen/login.dart';
import 'package:flutter/material.dart';

import '../screen/main_page/main_page.dart';
import '../screen/signup_mostchar_1.dart';

class Routes {
  static const String LoginRoute = "/";
  static const String loginRoute = "/login";

  static const String SignUpMostchar1Route = "/SignUpMostchar1";
  static const String SignUpMostchar2Route = "/SignUpMostchar2";
  static const String MainPage = "/MainPage";
}

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.LoginRoute:
      return MaterialPageRoute(builder: (_) => LOGIN());
    case Routes.SignUpMostchar1Route:
      return MaterialPageRoute(builder: (_) => SignUpMostchar1());

    case Routes.MainPage:
      return MaterialPageRoute(builder: (_) => MainPage());
    default: {
      return MaterialPageRoute(builder: (_) => LOGIN());
    }
  }
}

class MagicRouter {
  static BuildContext? currentContext = navigatorKey.currentContext;

  static Future<dynamic> navigateTo(Widget page) =>
      navigatorKey.currentState!.push(_materialPageRoute(page));

  static Future<dynamic> navigateAndPopAll(Widget page) =>
      navigatorKey.currentState!.pushAndRemoveUntil(
        _materialPageRoute(page),
        (_) => false,
      );

  static Future<dynamic> navigateAndPopUntilFirstPage(Widget page) =>
      navigatorKey.currentState!.pushAndRemoveUntil(
          _materialPageRoute(page), (route) => route.isFirst);

  static void pop() => navigatorKey.currentState!.pop();

  static Route<dynamic> _materialPageRoute(Widget page) =>
      MaterialPageRoute(builder: (_) => page);
}
