import 'package:flutter/material.dart';
import 'package:itacov/ui/constant/constant.dart';
import 'package:itacov/ui/widgets/app_widgets.dart';
import 'package:itacov/ui/widgets/home_body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            SingleChildScrollView(child: HomeBody())
          ],
        ),
      ),
    );
  }
}
