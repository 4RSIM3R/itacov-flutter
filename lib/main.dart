import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:itacov/config/style.dart';
import 'package:sailor/sailor.dart';

import 'core/app.dart';

//void main() => runApp(MyApp());
Future<void> main() async {
  GetIt.instance.registerSingleton(
    App(
      title: 'ITACOV',
      router: Sailor(),
    ),
  );
  // wait initializer
  await App.main.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: App.main.title,
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      navigatorKey: App.main.router.navigatorKey,
      onGenerateRoute: App.main.router.generator(),
    );
  }
}
