import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itacov/core/bloc/indonesia/bloc.dart';
import 'package:itacov/ui/constant/constant.dart';
import 'package:itacov/ui/constant/injector.dart';
import 'package:itacov/ui/widgets/app_widgets.dart';
import 'package:itacov/ui/widgets/home_body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: BlocProvider<IndonesiaBloc>(
        create: (context) => sl<IndonesiaBloc>(),
        child: BlocListener<IndonesiaBloc, IndonesiaState>(
          listener: (context, state) {
            if (state is FailureIndonesiaState) {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text(state.errorMessage),
              ));
            }
          },
          child: SizedBox.expand(
            child: Stack(
              children: <Widget>[
                AppWidget(
                  image: "assets/images/main.png",
                  tagline: 'Lawan\nCOVID-19',
                  imageTop: 120,
                ),
                SingleChildScrollView(
                  child: HomeBody(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
