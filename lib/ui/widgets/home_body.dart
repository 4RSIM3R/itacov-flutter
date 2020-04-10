import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itacov/core/bloc/dunia/bloc.dart';
import 'package:itacov/core/bloc/indonesia/bloc.dart';
import 'package:itacov/core/model/indonesia/indonesia_model.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<IndonesiaBloc>(context).add(LoadDataIndonesiaEvent());
      BlocProvider.of<DuniaBloc>(context).add(LoadDuniaEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 234),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: Color(0xFFFEFEFE)),
        padding: EdgeInsets.only(top: 26, left: 22, right: 22, bottom: 100),
        child: Column(
          children: <Widget>[
            _buildRegionInput(),
            SizedBox(
              height: spacing(2),
            ),
            UpdateKasus(),
            SizedBox(
              height: spacing(2),
            ),
            CardKasusIndonesia(),
            SizedBox(
              height: spacing(2),
            ),
            PetaPersebaran(),
            SizedBox(
              height: spacing(2),
            ),
            BeritaTerbaru(),
            SizedBox(
              height: spacing(2),
            ),
            ListBerita(),
            SizedBox(
              height: spacing(2),
            ),
            BeritaDunia(),
            SizedBox(height: spacing(3)),
            CardKasusDunia(),
          ],
        ),
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
                borderRadius: BorderRadius.vertical(top: Radius.circular(spacing(2))),
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
    return buildHeader(title: 'Berita Terbaru', desc: 'Diperbaharui 1 jam yang lalu', onPressedAction: () => Navigator.pushNamed(context, '/news'));
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
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<IndonesiaBloc, IndonesiaState>(
          builder: (context, state) {
            if (state is LoadingIndonesiaState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LoadedIndonesiaState) {
              return buildRowUpdateKasus(state.indonesiaModel);
            } else if (state is FailureIndonesiaState) {
              return Center(
                child: Text(state.errorMessage),
              );
            } else {
              return Container();
            }
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
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: BlocBuilder<DuniaBloc, DuniaState>(
          builder: (context, state) {
            if (state is LoadingDuniaState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LoadedDuniaState) {
              final listDuniaModel = state.listDuniaModel;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: listDuniaModel.asMap().keys.map((index) {
                  final item = listDuniaModel[index];
                  Color color;
                  if (index == 0) {
                    color = Colors.orange;
                  } else if (index == 1) {
                    color = Colors.green;
                  } else {
                    color = Colors.red;
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                          top: 16,
                          right: 16,
                        ),
                        child: Text(
                          item.name,
                          style: TextStyle(color: color),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 8,
                        ),
                        child: Text(
                          item.value,
                          style: TextStyle(
                            color: color,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      index == listDuniaModel.length - 1 ? Container() : Divider(thickness: 1),
                    ],
                  );
                }).toList(),
              );
            } else if (state is FailureDuniaState) {
              return Center(
                child: Text(state.errorMessage),
              );
            } else {
              return Container();
            }
          },
        ),
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
                Text(number, style: TextStyle(color: color, fontSize: 32, fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ],
    );
  }
}
