import 'package:flutter/material.dart';
import 'package:itacov/ui/constant/constant.dart';
import 'package:itacov/ui/constant/typography.dart';


class AppWidget extends StatelessWidget {
  final String image;
  final String tagline;
  final double imageTop;

  const AppWidget({Key key, this.image, this.imageTop, this.tagline})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(375),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
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
                  top: 60,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: 'ITA',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'COV',
                              style: TextStyle(color: txtPink),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: spacing(3)),
                      headingTextMedium(
                          text: tagline,
                          color: white,
                          fontWeight: FontWeight.w700)
                    ],
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 20,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                Positioned(
                  top: imageTop,
                  right: 24,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
