import 'package:flutter/material.dart';
import 'package:itacov/constant/constant.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>
    with SingleTickerProviderStateMixin {
  double initialPercentage = 0.65;
  TextEditingController regionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    regionController.text = 'Seluruh Indonesia';
  }

  @override
  Widget build(BuildContext context) {
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
                percentage = (scrollController.position.viewportDimension) /
                    (MediaQuery.of(context).size.height);
              }
              return AnimatedContainer(
                duration: Duration(milliseconds: 250),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius:
                      BorderRadius.circular(percentage > 0.8 ? 0.0 : 32.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      _buildRegionInput(),
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
