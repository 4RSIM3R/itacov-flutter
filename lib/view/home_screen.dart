import 'package:flutter/material.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/constant/typhography.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              buildHeader(context),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36.0),
                  topRight: Radius.circular(36.0)
                ),
              ),
              height: 580,
              width: 600,
            ),
          )
        ],
      ),
    );
  }
}

Widget buildHeader(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 24, horizontal: 24.0),
                  child: Row(
                    children: <Widget>[
                      headingTextBold(text: 'ITA', color: white),
                      headingTextBold(text: 'COV', color: midPink),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 24, horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.notifications,
                        size: 34,
                        color: white,
                      )
                    ],
                  ),
                )
              ],
            ),
            // ! Image
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      headingTextMedium(text: 'Lawan', color: white),
                      headingTextBold(text: 'COVID-19', color: white)
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[Image.asset("assets/images/main.png")],
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );
}
