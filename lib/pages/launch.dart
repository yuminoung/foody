import 'package:flutter/material.dart';
import 'dart:async';

class Launch extends StatefulWidget {
  @override
  _LaunchState createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  initState() {
    super.initState();
    Timer(Duration(seconds: 2),
        () => {Navigator.pushReplacementNamed(context, '/home')});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text(
          '小黄送餐',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
    );
  }
}
