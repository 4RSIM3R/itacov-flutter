/*
itacov-flutter - news_list
created by: stefensuhat at 06 Apr 2020 20.56
*/

import 'package:flutter/material.dart';
import 'package:itacov/ui/shared/images.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: <Widget>[
          ClipRRect(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.grey,
              child: Image.asset(
                backgroundImage,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            borderRadius: BorderRadius.circular(18.0),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              'Melonjak jadi 893 sebaran kasus positif corona',
              overflow: TextOverflow.clip,
              style: Theme.of(context)
                  .textTheme
                  .subtitle
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
