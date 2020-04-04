import 'package:flutter/material.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/constant/typhography.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          buildAppbar(),
          buildImageHeader(),
          buildsubHeader(),
          buildContent(),
        ],
      ),
    );
  }

  Container buildAppbar() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [deepBlue, midPurple, midPink],
          begin: Alignment(-1.0, -1.0),
          end: Alignment(1.0, 1.0),
        ),
      ),
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 45.0, horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildHeader(),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 45.0, horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildIconHeader(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Positioned buildImageHeader() {
    return Positioned(
      top: 0,
      left: 200,
      right: 0,
      bottom: 500,
      child: Image.asset(
        "assets/images/main.png",
        fit: BoxFit.contain,
      ),
    );
  }

  Positioned buildsubHeader() {
    return Positioned(
      top: 110,
      left: -200,
      right: 0,
      bottom: 0,
      child: Column(
        children: <Widget>[
          headingTextBold(text: 'Lawan', color: white),
          SizedBox(height: 10),
          headingTextBold(text: 'COVID-19', color: white),
        ],
      ),
    );
  }

  // Isi Content Nya Nanti
  Positioned buildContent() {
    return Positioned(
      bottom: 0,
      top: 250,
      right: 0,
      left: 0,
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36.0),
            topRight: Radius.circular(36.0),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 70, vertical: 25.0),
              child: Container(
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(26.0),
                      ),
                    ),
                    labelText: 'Seluruh Indonesia',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Ini Untuk Icon Header
  Icon buildIconHeader() {
    return Icon(
      Icons.notifications,
      size: 35.0,
      color: white,
    );
  }

  // Init Untuk Tulisna Heading
  Row buildHeader() {
    return Row(
      children: <Widget>[
        headingTextBold(text: 'ITA', color: white),
        headingTextBold(text: 'COV', color: txtPink),
      ],
    );
  }
}
