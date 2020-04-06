import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget headingTextBold({
  @required String text,
  @required Color color,
  TextAlign textAlign = TextAlign.left,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 36,
    ),
    textAlign: textAlign,
  );
}

Widget headingTextMedium({
  @required String text,
  @required Color color,
  TextAlign textAlign = TextAlign.left,
  FontWeight fontWeight = FontWeight.w500,
  double height = 1.0,
  double fontSize = 56,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: ScreenUtil().setSp(fontSize),
      fontWeight: fontWeight,
      height: height,
    ),
    textAlign: textAlign,
  );
}
