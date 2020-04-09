import 'package:flutter/material.dart';
import 'package:itacov/ui/constant/constant.dart';

class CardWidget extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function() onTap;

  CardWidget({this.icon, this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color(0XFFFFFFFF),
          ),
          child: Padding(
            padding: EdgeInsets.all(spacing(2.5)),
            child: Row(
              children: <Widget>[
                icon,
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    label,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0XFF353535),
                    ),
                  ),
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
