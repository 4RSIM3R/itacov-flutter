import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:itacov/ui/widgets/app_widgets.dart';
import 'package:itacov/ui/widgets/card_widget.dart';

import '../constant/constant.dart';

class DoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            AppWidget(
              image: "assets/images/do.png",
              tagline: 'Apa yang bisa\nDilakukan ?',
              imageTop: 60,
            ),
            SingleChildScrollView(child: BodyWidget()),
          ],
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            CardWidget(
              icon: Icon(Icons.info),
              label: 'Cara Mencegah',
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            CardWidget(
              icon: Icon(Icons.check_box),
              label: 'Cara Mengenali',
              onTap: () {},
            ),
            SizedBox(
              height: 30,
            ),
            HelpCenterWidget(),
            SizedBox(
              height: 10,
            ),
            CardWidget(
              icon: Icon(Icons.home),
              label: 'Rumah Sakit Terdekat',
              onTap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            CardWidget(
              icon: Icon(Icons.laptop),
              label: 'Konsultasi Dokter',
              onTap: () {},
            ),
            SizedBox(
              height: 38,
            ),
            PahlawanWidget(),
            SizedBox(
              height: 36,
            ),
            KerumunanWidget(),
            SizedBox(
              height: 36,
            ),
            HoaxPage(),
          ],
        ),
      ),
    );
  }
}

class HelpCenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Pusat Bantuan',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color(0XFF353535),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Berikut adalah beberapa informasi & tindakan yang dapat segera anda lakukan jika mengalami gejala-gejala seperti COVID-19',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0XFF818181),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 178,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Color(0XFF834FCD),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'HOTLINE',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(
                          0XFF834FCD,
                        ),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 25,
                left: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      '119',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 52),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'EXT 9',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 28,
                right: 28,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0XFFEE0000),
                  child: Text(
                    'PANGGIL!',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Text(
                  'Jangan ragu untuk memanggil jika kondisi memang penting atau bahkan darurat!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PahlawanWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [deepBlue, midPurple, midPink],
          begin: Alignment(-1.0, -1.0),
          end: Alignment(1.0, 1.0),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: EdgeInsets.symmetric(horizontal: 36, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Bantu Para Pahlawan Kita',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: spacing(0.5),
          ),
          Container(
            width: 166,
            child: Text(
              'Yuk, berdonasi untuk pembelian APD & kebutuhan lain bagi pahlawan kita!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {},
            color: Color(0XFF8950CA),
            child: Text(
              'Donasi',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          ),
        ],
      ),
    );
  }
}

class KerumunanWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Color(0XFFF0CBFF),
          width: 1,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 36, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Laporkan kerumunan',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Untuk mendukung program social distancing, Anda dapat melaporkan pada petugas keamanan jika menemukan kerumunan.',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0XFF818181),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: () {},
              color: Color(0XFF8950CA),
              child: Text(
                'Lapor & dapatkan 10 Poin',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class HoaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Aksi Berantas HOAX COVID-19',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Berikut adalah beberapa informasi bantahan terhadap HOAX yang beredar yang telah dikonfirmasi oleh Humas POLRI. Bagikan informasi ini dan dapatkan ITACOV-Poin!',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0XFF818181),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          height: 253,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return CardHoax();
            },
          ),
        ),
//        CardHoax(),
      ],
    );
  }
}

class CardHoax extends StatelessWidget {
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
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
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
            SizedBox(height: spacing(1.5)),
            Container(
              width: 136,
              child: Text(
                'Video wanita sakit paru-paru BUKAN COVID-19',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              '+ 2 Poin',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12,
                color: Color(0XFFDC10AF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
