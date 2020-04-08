import 'package:flutter/material.dart';
import 'package:itacov/core/bloc/dunia_bloc.dart';
import 'package:itacov/core/bloc/indonesia_bloc.dart';
import 'package:itacov/core/model/dunia_model.dart';
import 'package:itacov/core/model/indonesia_model.dart';
import 'package:itacov/ui/constant/constant.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  double initialPercentage = 0.65;
  TextEditingController regionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    regionController.text = 'Seluruh Indonesia';
    indonesiaBloc..getIndonesia();
    duniaBloc..getSembuh();
    duniaBloc..getPositif();
    duniaBloc..getMeninggal();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 234),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36), color: Color(0xFFFEFEFE)),
        padding: EdgeInsets.only(top: 26, left: 22, right: 22, bottom: 100),
        child: Column(
          children: <Widget>[
            _buildRegionInput(),
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
            BeritaDunia(),
            SizedBox(height: spacing(3)),
            buildCardKasusDunia(),
          ],
        ),
      ),
    );
  }

  buildCardKasusDunia() => CardKasusDunia();

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
              height: spacing(1),
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
            SizedBox(height: spacing(0.5)),
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Peta Persebaran',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 8,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset('assets/images/Bitmap.png'),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(4),
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '+893',
                          style: theme.textTheme.display1.copyWith(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            height: 1.0,
                          ),
                        ),
                        Text(
                          'Kasus Baru',
                          style: theme.textTheme.body1.copyWith(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '578',
                          style: theme.textTheme.display1.copyWith(
                            color: Colors.purple[300],
                            fontWeight: FontWeight.bold,
                            height: 1.0,
                          ),
                        ),
                        Text(
                          'PDP',
                          style: theme.textTheme.body1.copyWith(
                            color: Colors.purple[300],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '3703',
                          style: theme.textTheme.display1.copyWith(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            height: 1.0,
                          ),
                        ),
                        Text(
                          'ODP',
                          style: theme.textTheme.body1.copyWith(
                            color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
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
        child: StreamBuilder<IndonesiaModel>(
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

  Row buildRowUpdateKasus(IndonesiaModel data) {
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

class CardKasusDunia extends StatelessWidget {
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
      height: 299,
      decoration: boxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: spacing(3)),
              StreamBuilder<DuniaModel>(
                  stream: duniaBloc.datapositif.stream,
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData)
                      return buildTileKasusDunia(
                          title: "${snapshot.data.name} Seluruh Dunia",
                          icon: Icons.add,
                          number: snapshot.data.value.toString(),
                          color: Colors.orange);
                    return Container();
                  }),
              StreamBuilder<DuniaModel>(
                  stream: duniaBloc.datasembuh.stream,
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData)
                      return buildTileKasusDunia(
                          title: "${snapshot.data.name} Seluruh Dunia",
                          icon: Icons.healing,
                          number: snapshot.data.value.toString(),
                          color: Colors.green);
                    return Center(child: CircularProgressIndicator());
                  }),
              StreamBuilder<DuniaModel>(
                  stream: duniaBloc.datamati.stream,
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData)
                      return buildTileKasusDunia(
                          title: "${snapshot.data.name} Seluruh Dunia",
                          icon: Icons.close,
                          number: '3434',
                          color: Colors.red);
                    return Container();
                  }),
            ],
          )
        ],
      ),
    );
  }

  Widget buildTileKasusDunia({title, icon, number, Color color}) {
    return Row(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(icon, color: color, size: 30),
            ),
            Column(
              children: <Widget>[
                Text(title, style: TextStyle(color: color, fontSize: 12)),
                Text(number,
                    style: TextStyle(
                        color: color,
                        fontSize: 32,
                        fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ],
    );
  }
}
