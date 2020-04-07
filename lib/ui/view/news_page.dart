/*
itacov-flutter - news
created by: stefensuhat at 06 Apr 2020 20.42
*/

import 'package:flutter/material.dart';
import 'package:itacov/ui/widgets/news_list.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.purple, //change your color here
        ),
        elevation: 0.0,
        title: const Text('Daftar Berita'),
        textTheme: TextTheme(
          headline: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map((i) {
              return NewsList();
            }).toList(),
          )),
    );
  }
}
