import 'package:flutter/material.dart';
import 'package:itacov/config/style.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      initialRoute: splashPage,
      onGenerateRoute: Routes().onGenerateRoute,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
        primaryColor: Colors.indigo,
      ),
    );
  }
}
