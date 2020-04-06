import 'package:flutter/material.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/constant/typhography.dart';

class AppWidget extends StatelessWidget {
  final String image;
  final String tagline;

  const AppWidget({Key key, this.image, this.tagline}) : super(key: key);

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
            top: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    headingTextMedium(
                      text: 'ITA',
                      color: white,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                    ),
                    headingTextMedium(
                      text: 'COV',
                      color: txtPink,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
                SizedBox(height: 24.0,),
                headingTextMedium(text: tagline, color: white, fontWeight: FontWeight.w700)
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 35,
            ),
          ),
          Positioned(
            top: 64,
            right: 24,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
