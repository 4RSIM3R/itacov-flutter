import 'dart:async';

import 'package:flutter/material.dart';
import 'package:itacov/constant/constant.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2), () => Navigator.of(context).pushNamed(mainPage));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [deepBlue, midPurple, midPink],
            begin: Alignment(-1.0, -1.0),
            end: Alignment(1.0, 1.0),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'ITA',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                  Text(
                    'COV',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .apply(color: txtPink),
                  ),
                ],
              ),
              Text(
                'Indonesia\nTanggap\nCOVID-19',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
