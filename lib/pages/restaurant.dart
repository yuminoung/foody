import 'package:flutter/material.dart';
import 'package:foody/widgets/_export_widgets.dart';

class Restaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: CustomAppBar(
        hasPop: true,
        title: Headline(
          title: '餐厅 $index',
        ),
      ),
      body: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.blue,
          ),
          Positioned(
            width: MediaQuery.of(context).size.width - 32,
            height: 100,
            bottom: -50,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.red),
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
