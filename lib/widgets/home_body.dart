import 'package:flutter/material.dart';
import 'package:itacov/bloc/indonesia_bloc.dart';
import 'package:itacov/constant/constant.dart';
import 'package:itacov/model/indonesia_model.dart';

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
    indonesiaBloc..getIndonesia();
  }

  @override
  void dispose() {
    indonesiaBloc.subject.close();
    super.dispose();
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
                      SizedBox(height: spacing(3)),
                      UpdateKasus(),
                      SizedBox(height: spacing(3)),
                      CardKasusIndonesia(),
                      SizedBox(height: spacing(3)),
                      PetaPersebaran(),
                      SizedBox(height: spacing(3)),
                      BeritaTerbaru(),
                      SizedBox(height: spacing(3)),
                      ListBerita(),
                      SizedBox(height: spacing(3)),
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
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(spacing(2))),
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
    return buildHeader(
        title: 'Berita Terbaru',
        desc: 'Diperbaharui 1 jam yang lalu',
        onPressedAction: () => Navigator.pushNamed(context, '/news'));
  }
}

class PetaPersebaran extends StatelessWidget {
  const PetaPersebaran({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: buildHeader(title: 'Peta Persebaran'),
        ),
        SizedBox(height: spacing(0.5)),
        Container(
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
              SizedBox(height: spacing(1)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '+893',
                        style: theme.textTheme.display1.copyWith(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Kasus baru',
                        style: theme.textTheme.body1
                            .copyWith(color: Colors.orange),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '478',
                        style: theme.textTheme.display1.copyWith(
                          color: Colors.purple[300],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'PDP',
                        style: theme.textTheme.body1
                            .copyWith(color: Colors.purple[300]),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '3703',
                        style: theme.textTheme.display1.copyWith(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'ODP',
                        style: theme.textTheme.body1
                            .copyWith(color: Colors.lightBlue),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
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
        child: StreamBuilder<Indonesia>(
          stream: indonesiaBloc.subject.stream,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) return buildRowUpdateKasus(snapshot.data);
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  Row buildRowUpdateKasus(Indonesia data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            buildIconHeader(icon: Icons.add, color: Colors.orange),
            buildNumberCount(value: data.positif, color: Colors.orange),
            Text('Kasus Positif'),
          ],
        ),
        Column(
          children: <Widget>[
            buildIconHeader(icon: Icons.healing, color: Colors.green),
            buildNumberCount(value: data.sembuh, color: Colors.green),
            Text('Sembuh'),
          ],
        ),
        Column(
          children: <Widget>[
            buildIconHeader(icon: Icons.close, color: Colors.red),
            buildNumberCount(value: data.meninggal, color: Colors.red),
            Text('Meninggal'),
          ],
        ),
      ],
    );
  }
}

class UpdateKasus extends StatelessWidget {
  const UpdateKasus({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildHeader(
      title: "Update Kasus COVID-19",
      desc: "Diperbaharui 3 Jam yang lalu",
      onPressedAction: () {},
    );
  }
}

Container buildIconHeader({icon, color}) {
  return Container(
    width: 26,
    height: 26,
    decoration: BoxDecoration(
      color: Color.alphaBlend(Colors.white70, color),
      borderRadius: BorderRadius.circular(26.0),
    ),
    child: Center(
      child: Icon(
        icon,
        size: 24.0,
        color: color,
      ),
    ),
  );
}

Text buildNumberCount({String value, Color color}) {
  return Text(
    value,
    style: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

Widget buildHeader({String title, String desc = '', Function onPressedAction}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              fontSize: 16,
            ),
          ),
          SizedBox(height: spacing(0.5)),
          Text(
            desc,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
              fontSize: 12,
            ),
          ),
        ],
      ),
      onPressedAction == null
          ? Container()
          : OutlineButton(
              onPressed: onPressedAction,
              child: Text("Lihat Detail"),
              color: deepBlue,
              textColor: Colors.purple,
              highlightedBorderColor: deepBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
    ],
  );
}
