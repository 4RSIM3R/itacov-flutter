import 'package:flutter/material.dart';
import 'package:itacov/view/do_page.dart';
import 'package:itacov/view/home_screen.dart';
import 'package:itacov/view/profile.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final _lisPage = <Widget>[
    HomeScreen(),
    DoPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }

  void _onNavBarTapped(int index) {
    setState(() => _selectedIndex = index);
  }
}
