import 'package:flutter/material.dart';
import 'package:itacov/widgets/app_widgets.dart';
import 'package:itacov/widgets/body_widgets.dart';
import 'package:itacov/widgets/card_widget.dart';

import 'do_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              AppWidget(
                image: "assets/images/main.png",
              ),
              BodyCustomWidget()
            ],
          ),
        ),
      ),
    );
  }
}
