import 'package:flutter/material.dart';
import 'package:itacov/config/style.dart';
import 'package:itacov/view/do_page.dart';
import 'package:itacov/view/home_screen.dart';
import 'package:itacov/view/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITACOV',
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: Splash(),
    );
  }
}

