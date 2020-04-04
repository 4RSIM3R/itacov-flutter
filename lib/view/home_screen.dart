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
                    topRight: Radius.circular(36.0)),
              ),
              height: MediaQuery.of(context).size.height / 1.4,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                physics: ClampingScrollPhysics(),
                children: <Widget>[BuildInputField(), BuildUpdateCovid()],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BuildUpdateCovid extends StatelessWidget {
  const BuildUpdateCovid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Update Kasus COVID-19',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Diperbaharui 3 Jam yang lalu',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 22.0),
          child: Column(
            children: <Widget>[
              OutlineButton(
                onPressed: () {},
                color: Colors.red,
                child: Text(
                  'Lihat Detail',
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class BuildInputField extends StatelessWidget {
  const BuildInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextFormField(
            autofocus: false,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.pin_drop),
              fillColor: white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        height: 400,
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
                  children: <Widget>[
                    Image.asset(
                      "assets/images/main.png",
                      fit: BoxFit.contain,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );
}
