import 'package:flutter/material.dart';
import 'package:itacov/widgets/card_widget.dart';

class BodyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 234),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: Color(0xFFFEFEFE),
        ),
        padding: EdgeInsets.only(top: 26, left: 22, right: 22, bottom: 100),
        child: Column(
          children: <Widget>[
           CardWidget(
             icon: Icon(Icons.no_encryption),
             label: "tes",
             onTap: (){},
           ),
           CardWidget(
             icon: Icon(Icons.no_encryption),
             label: "tes",
             onTap: (){},
           ),
           CardWidget(
             icon: Icon(Icons.no_encryption),
             label: "tes",
             onTap: (){},
           )
          ],
        ),
      ),
    );
  }
}
