import 'package:flutter/material.dart';
import 'package:foody/widgets/_export_widgets.dart';

class BottomHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(8), child: Carousel()),
        Text('oks'),
      ],
    ));
  }
}
