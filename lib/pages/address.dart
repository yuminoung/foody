import 'package:flutter/material.dart';
import 'package:foody/widgets/_export_widgets.dart';

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        hasPop: true,
        title: Headline(
          title: '收货地址',
        ),
      ),
      body: Container(child: Text('123 Abc Address Melbourne')),
    );
  }
}
