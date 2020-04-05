import 'package:flutter/material.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/constant/typhography.dart';

class AppWidget extends StatelessWidget {

  final String image ;

  const AppWidget({Key key, this.image}) : super(key: key); 

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 375,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [deepBlue, midPurple, midPink],
          begin: Alignment(-1.0, -1.0),
          end: Alignment(1.0, 1.0),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 34,
            left: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                headingTextBold(
                    text: 'ITA', color: white, textAlign: TextAlign.center),
                headingTextBold(
                    text: 'COV', color: txtPink, textAlign: TextAlign.center)
              ],
            ),
          ),
          Positioned(
            top: 34,
            right: 35,
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 35,
            ),
          ),
          Positioned(
            top: 67.59,
            right: 35.23,
            child: Image.asset(image),
          ),
        ],
      ),
    );
  }
}
