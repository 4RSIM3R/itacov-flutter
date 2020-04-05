import 'package:flutter/material.dart';
import 'package:itacov/config/route.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/core/app.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () {
          App.main.router.navigate(RouteConfig.MAIN);
        },
        child: Container(
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
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'COV',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .apply(color: txtPink),
                    ),
                  ],
                ),
                Text(
                  'Indonesia\nTanggap\nCOVID-19',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
