import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itacov/constant/constant.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> with SingleTickerProviderStateMixin {
  double initialPercentage = 0.65;
  String regionInput = 'Seluruh Indonesia';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
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
                percentage = (scrollController.position.viewportDimension) / (MediaQuery.of(context).size.height);
              }
              return AnimatedContainer(
                duration: Duration(milliseconds: 250),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(percentage > 0.8 ? 0.0 : 32.0),
                ),
                padding: EdgeInsets.all(
                  ScreenUtil().setWidth(48),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildRegionInput(),
                      SizedBox(
                        height: ScreenUtil().setHeight(48),
                      ),
                      UpdateKasus(),
                      SizedBox(
                        height: ScreenUtil().setHeight(48),
                      ),
                      CardKasusIndonesia(),
                      SizedBox(
                        height: ScreenUtil().setHeight(48),
                      ),
                      Text(
                        'Peta Persebaran',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: ScreenUtil().setSp(42),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(24),
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
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.symmetric(
        vertical: ScreenUtil().setHeight(16),
        horizontal: ScreenUtil().setWidth(28),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: ScreenUtil().setWidth(64),
                height: ScreenUtil().setWidth(64),
                child: Center(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.purple,
                    size: ScreenUtil().setWidth(42),
                  ),
                ),
              ),
              Container(
                width: ScreenUtil().setWidth(64),
                height: ScreenUtil().setWidth(64),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purpleAccent.withOpacity(0.2),
                ),
              ),
            ],
          ),
          SizedBox(
            width: ScreenUtil().setWidth(28),
          ),
          Expanded(
            child: Text(
              regionInput,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
          ),
        ],
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
                borderRadius: BorderRadius.circular(16),
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
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 8,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image.asset('assets/images/Bitmap.png'),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(
                        ScreenUtil().setWidth(16),
                      ),
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(64),
              vertical: ScreenUtil().setHeight(48),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildWidgetAngkaPetaPersebaran(
                  '+103',
                  'Kasus Baru',
                  Colors.orange,
                ),
                _buildWidgetAngkaPetaPersebaran(
                  '578',
                  'Pasien DP',
                  Colors.purpleAccent,
                ),
                _buildWidgetAngkaPetaPersebaran(
                  '3703',
                  'Orang DP',
                  Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWidgetAngkaPetaPersebaran(String value, String label, Color textColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          '$value',
          style: TextStyle(
            color: textColor,
            fontSize: ScreenUtil().setSp(72),
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: ScreenUtil().setSp(36),
          ),
        ),
      ],
    );
  }
}

class CardKasusIndonesia extends StatelessWidget {
  final IconData icon;

  const CardKasusIndonesia({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 6,
      child: Padding(
        padding: EdgeInsets.all(
          ScreenUtil().setWidth(48),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildWidgetInfoCovid(
              'Kasus Positif',
              893,
              Icons.add,
              Colors.orange,
              Colors.orangeAccent,
            ),
            _buildWidgetInfoCovid(
              'Sembuh',
              35,
              Icons.favorite_border,
              Colors.green,
              Colors.greenAccent,
            ),
            _buildWidgetInfoCovid(
              'Meninggal',
              78,
              Icons.clear,
              Colors.red,
              Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidgetInfoCovid(
    String label,
    int value,
    IconData icon,
    Color colorIcon,
    Color colorShadow,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: ScreenUtil().setWidth(72),
          height: ScreenUtil().setWidth(72),
          decoration: BoxDecoration(
            color: colorShadow.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: colorIcon,
            size: ScreenUtil().setWidth(42),
          ),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(16),
        ),
        Text(
          '$value',
          style: TextStyle(
            fontSize: ScreenUtil().setSp(72),
            color: colorIcon,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: colorIcon,
            fontSize: ScreenUtil().setSp(36),
          ),
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Update Kasus COVID-19",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  fontSize: ScreenUtil().setSp(42),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "Diperbaharui 3 Jam yang lalu",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  fontSize: ScreenUtil().setSp(32),
                ),
              ),
            ],
          ),
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(999),
            side: BorderSide(
              color: Colors.grey,
              width: 0.1,
            ),
          ),
          onPressed: () {
            // TODO: lakukan sesuatu ketika button lihat detail di-tap
          },
          child: Text('Lihat Detail'),
          color: Colors.white,
          textColor: Colors.purpleAccent,
        ),
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
