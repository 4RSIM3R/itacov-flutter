import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:itacov/ui/constant/constant.dart';
import 'package:itacov/ui/view/do_page.dart';
import 'package:itacov/ui/view/home_page.dart';
import 'package:itacov/ui/view/news_page.dart';
import 'package:itacov/ui/view/profile_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final _lisPage = <Widget>[
    HomePage(),
    DoPage(),
    ProfilePage(),
    NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _lisPage[_selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.grey[200])),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: spacing(2.5), vertical: spacing(.5)),
          child: GNav(
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            tabBackgroundGradient: LinearGradient(
              colors: [deepBlue, midPurple, midPink],
              begin: Alignment(-1.0, -1.0),
              end: Alignment(1.0, 1.0),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: spacing(2.5), vertical: spacing(0.5)),
            duration: Duration(milliseconds: 250),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.info,
                text: 'Info',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              _onNavBarTapped(index);
            },
          ),
        ),
      ),
    );
  }

  void _onNavBarTapped(int index) {
    setState(() => _selectedIndex = index);
  }
}
