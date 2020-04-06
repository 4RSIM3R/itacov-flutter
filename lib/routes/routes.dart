import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/view/do_page.dart';
import 'package:itacov/view/home_screen.dart';
import 'package:itacov/view/main_page.dart';
import 'package:itacov/view/splash.dart';
import 'package:itacov/view/news_page.dart';

class Routes {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashPage:
        return MaterialPageRoute(builder: (_) => Splash());
        break;
      case mainPage:
        return MaterialPageRoute(builder: (_) => MainPage());
        break;
      case homePage:
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      case doPage:
        return MaterialPageRoute(builder: (_) => DoPage());
        break;
      case newsPage:
        return MaterialPageRoute(builder: (_) => NewsPage());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('404 | Not Found'),
            ),
          ),
        );
    }
  }
}
