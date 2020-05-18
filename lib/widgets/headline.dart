import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String title;
  Headline({this.title});

  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}
