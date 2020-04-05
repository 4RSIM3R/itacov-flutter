import 'package:flutter/material.dart';

final ThemeData defaultTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Poppins',
  primaryColor: Colors.indigo,
  textTheme: TextTheme(
      headline3: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600),
      headline4: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.w600),
      headline5: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
  ),
  buttonTheme: ButtonThemeData(
//    buttonColor: ColorConfig.PRIMARY,
      ),
);

/// NAME       SIZE   WEIGHT   SPACING  2018 NAME
/// display4   112.0  thin     0.0      headline1
/// display3   56.0   normal   0.0      headline2
/// display2   45.0   normal   0.0      headline3
/// display1   34.0   normal   0.0      headline4
/// headline   24.0   normal   0.0      headline5
/// title      20.0   medium   0.0      headline6
/// subhead    16.0   normal   0.0      subtitle1
/// body2      14.0   medium   0.0      body1 (bodyText1)
/// body1      14.0   normal   0.0      body2 (bodyText2)
/// caption    12.0   normal   0.0      caption
/// button     14.0   medium   0.0      button
/// subtitle   14.0   medium   0.0      subtitle2
/// overline   10.0   normal   0.0      overline
