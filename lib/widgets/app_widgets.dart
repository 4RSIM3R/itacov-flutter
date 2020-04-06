import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/constant/typhography.dart';

class AppWidget extends StatelessWidget {
  final String image;
  final String tagline;

  const AppWidget({Key key, this.image, this.tagline}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double paddingTop = mediaQueryData.padding.top;
    return Container(
      height: ScreenUtil().setHeight(730),
      padding: EdgeInsets.only(
        top: paddingTop > 0 ? paddingTop + ScreenUtil().setHeight(36) : ScreenUtil().setHeight(48),
        left: ScreenUtil().setWidth(48),
        right: ScreenUtil().setWidth(48),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [deepBlue, midPurple, midPink],
          begin: Alignment(-1.0, -1.0),
          end: Alignment(1.0, 1.0),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  headingTextMedium(
                    text: 'ITA',
                    color: white,
                    fontWeight: FontWeight.w600,
                  ),
                  Expanded(
                    child: headingTextMedium(
                      text: 'COV',
                      color: txtPink,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(72),
            ),
            child: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: ScreenUtil().setWidth(48),
                  ),
                  Expanded(
                    child: headingTextMedium(
                      text: tagline,
                      color: white,
                      fontWeight: FontWeight.w700,
                      height: 1.1,
                      fontSize: 64,
                    ),
                  ),
                  Image.asset(
                    image,
                    width: ScreenUtil().setWidth(470),
                    height: ScreenUtil().setWidth(470),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
