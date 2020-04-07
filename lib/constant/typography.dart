import 'package:flutter/material.dart';

Widget headingTextBold(
    {@required String text,
    @required Color color,
    TextAlign textAlign = TextAlign.left}) {
  return Text(
    text,
    style: TextStyle(color: color, fontWeight: FontWeight.w600, fontSize: 36),
    textAlign: textAlign,
  );
}

Widget headingTextMedium(
    {@required String text,
    @required Color color,
    TextAlign textAlign = TextAlign.left,
    FontWeight fontWeight = FontWeight.w500}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 24.0,
      fontWeight: fontWeight,
    ),
    textAlign: textAlign,
  );
}
