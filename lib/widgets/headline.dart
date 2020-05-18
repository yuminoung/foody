import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String title;
  Headline({this.title});

  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
