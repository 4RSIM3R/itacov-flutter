import 'package:flutter/material.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/constant/typhography.dart';

class BodyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            InputSearchField(size: size),
            SizedBox(height: 20),
            UpdateKasus(),
            SizedBox(height: 20),
            CardKasusIndonesia(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                headingTextMedium(text: "Peta Persebaran", color: Colors.grey),
              ],
            ),
            PetaPersebaran(),
            SizedBox(height: 20),
            BeritaTerbaru(),
            SizedBox(height: 20),
            ListBerita(),
            SizedBox(height: 20),
            BeritaDunia()
          ],
        ),
      ),
    );
  }
}

class ListBerita extends StatelessWidget {
  const ListBerita({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 253,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return CardBerita();
        },
      ),
    );
  }
}

class PetaPersebaran extends StatelessWidget {
  const PetaPersebaran({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 315,
      width: 330,
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 10,
            color: Color.fromRGBO(0, 0, 2, 0.0643399),
          ),
        ],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 206,
                width: 319,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                        image: AssetImage("assets/images/Bitmap.png"))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: white),
                      child: Icon(
                        Icons.arrow_right,
                        size: 35,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    '893',
                    style: TextStyle(
                      fontSize: 36,
                      color: Color(0xffd9D000),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    'Kasus baru',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: Color(0xffd9D000)),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    '478',
                    style: TextStyle(
                        fontSize: 36,
                        color: midPurple,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'PDP',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: midPurple),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    '3703',
                    style: TextStyle(
                        fontSize: 36,
                        color: deepBlue,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'ODP',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: deepBlue),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardKasusIndonesia extends StatelessWidget {
  final IconData icon;
  const CardKasusIndonesia({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      color: white,
      borderRadius: BorderRadius.all(
        Radius.circular(18),
      ),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 2),
          color: Color.fromRGBO(0, 0, 2, 0.0643399),
        ),
      ],
    );
    return Container(
      width: 330,
      height: 141,
      decoration: boxDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                buildIconHeader(icon: Icons.add, color: Color(0xffd9D000)),
                Text(
                  '893',
                  style: TextStyle(fontSize: 36, color: Color(0xffd9D000)),
                ),
                Text('Kasus Positif'),
              ],
            ),
            Column(
              children: <Widget>[
                buildIconHeader(icon: Icons.healing, color: Colors.green),
                Text(
                  '35',
                  style: TextStyle(fontSize: 36, color: Colors.green),
                ),
                Text('Sembuh'),
              ],
            ),
            Column(
              children: <Widget>[
                buildIconHeader(icon: Icons.error, color: Colors.red),
                Text(
                  '78',
                  style: TextStyle(fontSize: 36, color: Colors.red),
                ),
                Text('Meninggal'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UpdateKasus extends StatelessWidget {
  const UpdateKasus({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Update Kasus COVID-19",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                fontSize: 16,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Diperbaharui 3 Jam yang lalu",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                fontSize: 12,
              ),
            ),
          ],
        ),
        OutlineButton(
          onPressed: () {},
          child: Text("Detail"),
          color: deepBlue,
          highlightedBorderColor: deepBlue,
        )
      ],
    );
  }
}

class InputSearchField extends StatelessWidget {
  const InputSearchField({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 1.4,
      child: TextField(
        showCursor: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: Icon(
            Icons.pin_drop,
            color: deepBlue,
          ),
          labelText: "Seluruh Indonesia",
          suffixIcon: Icon(Icons.arrow_downward),
        ),
      ),
    );
  }
}

// Custome Icon
Container buildIconHeader({icon, color}) {
  return Container(
    width: 30,
    height: 30,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(26.0),
    ),
    child: Center(
      child: Icon(
        icon,
        color: white,
      ),
    ),
  );
}

class BeritaTerbaru extends StatelessWidget {
  const BeritaTerbaru({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Berita Terbaru",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                fontSize: 16,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Diperbaharui 1 Jam yang lalu",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                fontSize: 12,
              ),
            ),
          ],
        ),
        OutlineButton(
          onPressed: () {},
          child: Text("Lihat Lainya"),
          color: deepBlue,
          highlightedBorderColor: deepBlue,
        )
      ],
    );
  }
}

class CardBerita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 238,
        child: Column(
          children: <Widget>[
            Container(
              height: 134,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Icon(
                Icons.camera,
                size: 80,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 136,
              child: Text(
                'Video wanita sakit paru-paru BUKAN COVID-19',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BeritaDunia extends StatelessWidget {
  const BeritaDunia({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Data COVID-19 Dunia",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                fontSize: 16,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Data akumulasi dari awal muncul",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                fontSize: 11,
              ),
            ),
          ],
        ),
        OutlineButton(
          onPressed: () {},
          child: Text("Lihat Lainya"),
          color: deepBlue,
          highlightedBorderColor: deepBlue,
        )
      ],
    );
  }
}
