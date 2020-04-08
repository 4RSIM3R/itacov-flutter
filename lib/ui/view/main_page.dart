import 'package:flutter/material.dart';
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
      body: _lisPage[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavBarTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Info'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Person'),
          ),
        ],
      ),
    );
  }

  void _onNavBarTapped(int index) {
    setState(() => _selectedIndex = index);
  }
}
