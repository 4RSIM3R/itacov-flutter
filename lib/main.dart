import 'package:flutter/material.dart';
import 'package:itacov/view/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITACOV',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Splash(),
    );
  }
}

