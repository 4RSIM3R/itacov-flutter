import 'package:flutter/material.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/constant/typhography.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>
    with SingleTickerProviderStateMixin {
  double initialPercentage = 0.65;
  TextEditingController regionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    regionController.text = 'Seluruh Indonesia';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        maxChildSize: 1.0,
        initialChildSize: initialPercentage,
        minChildSize: initialPercentage,
        builder: (BuildContext context, ScrollController scrollController) {
          return AnimatedBuilder(
            animation: scrollController,
            builder: (context, child) {
              double percentage = initialPercentage;
              if (scrollController.hasClients) {
                percentage = (scrollController.position.viewportDimension) /
                    (MediaQuery.of(context).size.height);
              }
              return AnimatedContainer(
                duration: Duration(milliseconds: 250),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius:
                      BorderRadius.circular(percentage > 0.8 ? 0.0 : 32.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      _buildRegionInput(),
                      SizedBox(height: 20),
                      UpdateKasus(),
                      SizedBox(height: 20),
                      CardKasusIndonesia(),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          headingTextMedium(
                              text: "Peta Persebaran", color: Colors.grey),
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
            },
          );
        },
      ),
    );
  }

  Widget _buildRegionInput() {
    return Container(
      height: 50.0,
      child: TextField(
        controller: regionController,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.location_on),
          hintText: 'Cari Daerah Terdampak',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: Color(0xffE1E1E1), width: 0.8),
          ),
        ),
        style: TextStyle(fontSize: 16.0),
      ),
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
