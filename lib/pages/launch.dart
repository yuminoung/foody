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
      body: Center(
        child: Text(
          'Foody',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
    );
  }
}
