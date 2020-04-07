import 'package:flutter/material.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/widgets/app_widgets.dart';
import 'package:itacov/widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            AppWidget(
              image: "assets/images/main.png",
              tagline: 'Lawan\nCOVID-19',
              imageTop: 120,
            ),
            HomeBody()
          ],
        ),
      ),
    );
  }
}
